#include "math.h"
#include "geometry.h"
#include <iostream>
#include <vector>
#include <algorithm>
#include <fstream>

// Konstanten für die grundlegenden Parameter
const float KantenLaenge = 100.0;
const float TiefeMittelpunkt = 1.0;
const float RadiusGroßeKugel = 100.0;
const float Helligkeit = 100.0;
const float Epsilon = 0.01;

// Screen-Klasse - Bildschirm, auf dem das gerenderte Bild ausgegeben wird
class Screen {
  public:
    int width;
    int height;
    std::vector<Vector3df> pixels; // Vektor, der alle Pixel des Bildes als RGB-Werte speichert
    Screen(int width, int height) : width(width), height(height), pixels(width * height, Vector3df{0.0, 0.0, 0.0}) {}

    // setzt den Wert eines bestimmten Pixels
    void set_pixel(int x, int y, Vector3df color) {
      pixels[y * width + x] = color;
    }

    // Bild im PPM-Format in Datei speichern
    void write_ppm() {
      std::ofstream file("OutputRenderedImage.ppm");

      file << "P3\n" << width << " " << height << "\n" << 255 << "\n";
      for (int y = height -1; y > 0; --y) {
        for (int x = 0; x < width; ++x) {
          const Vector3df color = pixels[y * width + x];
          file << static_cast<int>(color[0] * 255) << " "
                 << static_cast<int>(color[1] * 255) << " "
                 << static_cast<int>(color[2] * 255) << " ";
        }
        file << "\n";
      }
      file.close();
    }
};

// Eine "Kamera", die von einem Augenpunkt aus in eine Richtung senkrecht auf ein Rechteck (das Bild) zeigt.
class Camera {
  public:
    Screen screen;
    Vector3df eye; // Position des Augenpunkts
    Vector3df direction; // Blickrichtung
    Vector3df up; // Orientierung der Kamera - "Oben"-Richtung
    Vector3df cam_view; // Blickrichtung der Kamera
    Vector3df horizontal; // Horizontale Basisvektoren der Kamera, die durch die "up"-Richtung und die Blickrichtung bestimmt werden
    Vector3df vertical; // vertikale Basisvektoren der Kamera
    float cam_width; // Breite des Bildes
    float cam_height; //
    float distance; // Abstand zum Bild
    float l; // links
    float r; // rechts
    float t; // oben
    float b; // unten

  Camera(Screen screen, Vector3df eye, Vector3df direction, Vector3df up, float width, float height, float distance, Vector3df u, Vector3df v, Vector3df w)
    : screen(screen), eye(eye), direction(direction), up(up), cam_view(w), horizontal(u), vertical(v), cam_width(width), cam_height(height), distance(distance) {
    this->l = -cam_width / 2.0;
    this->r = cam_width / 2.0;
    this->t = cam_height / 2.0;
    this->b = -cam_height / 2.0;
  }


    // erzeugt für jedes Pixel einen Strahl
    Ray<float, 3u> generate_ray(int x, int y) {
      float p_u = l + (r - l) * (x + 0.5) / screen.width; // x-Koordinate des Pixels in Bildschirmkoordinaten
      float p_v = b + (t - b) * (y + 0.5) / screen.height; // y-Koordinate des Pixels in Bildschirmkoordinaten

      Vector3df ray_direction = (Vector3df{0, 0, 0} - (distance * cam_view)) + p_u * horizontal + p_v * vertical; // Blickrichtung des Strahls
      ray_direction.normalize(); // Richtung normalisieren
      return Ray<float, 3u>{eye, ray_direction}; // Strahl erzeugen
    }
};

// Das "Material" der Objektoberfläche mit ambienten, diffusem und reflektiven Farbanteil.
class Material {
  public:
    Vector3df color; // Farbe
    float shininess; // Glanz der Oberfläche
    float reflectivity; // Reflektionsfaktor des Materials
    float refraction_index; // Indizwert der Brechung des Materials (Transparenz und Lichtbrechung)
};


// Ein "Objekt", z.B. eine Kugel oder ein Dreieck, und dem zugehörigen Material der Oberfläche.
// Im Prinzip ein Wrapper-Objekt, das mindestens Material und geometrisches Objekt zusammenfasst.
class Object {
  public:
    Sphere3df sphere; // Objekt aus geometry.h, das Kugel darstellt
    Material material; // Aussehen der Oberfläche des Objekts
    Object(Sphere3df sphere, Material material) : sphere(sphere), material(material) {}
};

// verschiedene Materialdefinition, z.B. Mattes Schwarz, Mattes Rot, Reflektierendes Weiss, ...
// im wesentlichen Variablen, die mit Konstruktoraufrufen initialisiert werden.

// gesammte zu rendernde "Szene"
class Scene {
  public:
    Vector3df light; // Position der Lichtquelle
    std::vector<Object> objects; // Liste der Objekte in der Szene
    Intersection_Context<float, 3> hitContext;

    Scene(Vector3df light) : light(light), objects() {}

    void add_object(Object object) {
      objects.push_back(object);
    }

  // berechnet die Beleuchtung eines Punktes
    float lambertian_shading(Vector3df light, Vector3df normal, float diffuse_coefficient) {
      Vector3df n = normal; // normal vector
      n.normalize();
      Vector3df l = light; // light vector
      l.normalize();

      float brightness = diffuse_coefficient * std::max(0.0f, n * l); // diffuse shading
      return brightness;
    }

    // sucht das nächstgelegenste Objekt, das ein Schnittpunkt mit dem Strahl hat
    Object* findClosestObject(Ray3df ray) {
      Object *closest_object = nullptr;
      float minimal_t = INFINITY; // minimale Schnittpunktzahl
      for (Object &object : objects) {
        bool found = object.sphere.intersects(ray, hitContext);
        if (found && hitContext.t > Epsilon && hitContext.t < minimal_t - Epsilon) {
          closest_object = &object;
          minimal_t = hitContext.t; // neue minimale Schnittpunktzahl
        }
      }
      return closest_object;
    }

    // prüft, ob ein Objekt von Lichtquellen beleuchtet wird oder ob es im Schatten liegt
    bool findLightSources() {
      Ray3df shadow_ray(hitContext.intersection, light - hitContext.intersection);
      findClosestObject(shadow_ray);
      if (hitContext.t > Epsilon && hitContext.t < 1- Epsilon) {
        return false;
      } else {
        return true;
      }
    }
};

// Die rekursive raytracing-Methode. Am besten ab einer bestimmten Rekursionstiefe (z.B. als Parameter übergeben) abbrechen.
// Farbwert eines Pixels durch rekursives Raytracing berechnet
Vector3df raytrace(Ray<float, 3> ray, Scene scene, int depth) {
  Vector3df color = {Helligkeit, Helligkeit, Helligkeit}; // Farbe des Pixels
  if (depth != 0) {
    Object* closestObject = scene.findClosestObject(ray);
    if (closestObject == nullptr) {
      return color;
    }

    Material materialObject = closestObject->material; // Material des gefundenen Objekts
    Vector3df normal = scene.hitContext.normal; // normal vector des Schnittpunktes
    Vector3df intersection = scene.hitContext.intersection; // Schnittpunkt des Strahls mit dem Objekt

    if (materialObject.reflectivity > 0.0) {
      Vector3df direction = ray.direction; // Blickrichtung des Strahls
      Vector3df reflection = direction - 2 * (direction * normal) * normal; // Blickrichtung des Strahls nach Reflektion
      reflection.normalize(); // Blickrichtung normalisieren
      Ray3df reflectionRay = Ray3df{intersection, reflection}; // Strahl mit Reflektion erzeugen
      color = materialObject.color + materialObject.reflectivity * raytrace(reflectionRay, scene, depth - 1); // Farbe des Pixels ermitteln
    }
    color = (scene.lambertian_shading(scene.light - intersection, normal, materialObject.shininess) + 0.3f * static_cast<float>(Helligkeit)) * color;
  }
  return color;
};

int main(void) {
  // Bildschirm erstellen
  // Kamera erstellen
  // Für jede Pixelkoordinate x,y
  //   Sehstrahl für x,y mit Kamera erzeugen
  //   Farbe mit raytracing-Methode bestimmen
  //   Beim Bildschirm die Farbe für Pixel x,y, setzten

  // Initialisiere Welt
  Vector3df light = {0.0, (KantenLaenge/2) - 0.5f, -TiefeMittelpunkt};
  Scene scene = Scene(light);

  Vector3df centerLeft = {-1005.0, 0.0, -20.0};
  Vector3df centerRight = {1005.0, 0.0, -20.0};
  Vector3df centerTop = {0, 1005.0, -20.0};
  Vector3df centerBottom = {0, -1005.0, -20.0};
  Vector3df centerBack = {0, 0, -1025.0};

  Vector3df centerSphere1 = {-2.0, -2.0, -18.0};
  Vector3df centerSphere2 = {2.0, 2.0, -22.0};
  Vector3df centerSphere3 = {-2.5, 2.3, -23.0};

  Sphere3df sphereLeft = Sphere3df(centerLeft, RadiusGroßeKugel);
  Sphere3df sphereRight = Sphere3df(centerRight, RadiusGroßeKugel);
  Sphere3df sphereTop = Sphere3df(centerTop, RadiusGroßeKugel);
  Sphere3df sphereBottom = Sphere3df(centerBottom, RadiusGroßeKugel);
  Sphere3df sphereBack = Sphere3df(centerBack, RadiusGroßeKugel);

  Sphere3df sphere1 = Sphere3df(centerSphere1, 1.5);
  Sphere3df sphere2 = Sphere3df(centerSphere2, 1.8);
  Sphere3df sphere3 = Sphere3df(centerSphere3, 1.0);


  Object objectLeft = Object(sphereLeft, Material({0.9, 0.0, 0.0}, 0.4, 0.9, 0.0));
  Object objectRight = Object(sphereRight, Material({0.0, 0.9, 0.0}, 0.4, 0.3, 0.0));
  Object objectTop = Object(sphereTop, Material({0.1, 0.1, 0.1}, 0.4, 0.3, 0.0));
  Object objectBottom = Object(sphereBottom, Material({0.8, 0.8, 0.8}, 0.8, 0.3, 0.0));
  Object objectBack = Object(sphereBack, Material({0.9, 0.9, 0.9}, 0.4, 0.3, 0.0));

  Object object1 = Object(sphere1, Material({0.0, 0.0, 0.9}, 0.4, 0.9, 0.0));
  Object object2 = Object(sphere2, Material({0.0, 0.9, 0.9}, 0.4, 0.3, 0.0));
  Object object3 = Object(sphere3, Material({0.9, 0.9, 0.0}, 0.7, 0.94, 0.0));

  scene.add_object(objectLeft);
  scene.add_object(objectRight);
  scene.add_object(objectTop);
  scene.add_object(objectBottom);
  scene.add_object(objectBack);

  scene.add_object(object1);
  scene.add_object(object2);
  scene.add_object(object3);


  Screen screen = Screen(1000, 1000);

  Vector3df eye = {0.0, 0.0, 0.0};
  Vector3df direction = {0.0, 0.0, 1.0};
  Vector3df up = {0.0, 1.0, 0.0};
  Vector3df cam_view = Vector3df {0.0, 0.0, 1.0};
  Vector3df horizontal = Vector3df {1.0, 0.0, 0.0};
  Vector3df vertical = Vector3df {0.0, 1.0, 0.0};
    Camera camera = Camera(screen, eye, direction, up, 10.0f, 10.0f, 15.0f, horizontal, vertical, cam_view);
    for (int x = 0; x < screen.width; x++) {
        for (int y = 0; y < screen.height; y++) {
            Ray<float, 3> ray = camera.generate_ray(x, y);
            Vector3df color = raytrace(ray, scene, 3);
            Object* closestObject = scene.findClosestObject(ray);
            auto firstIntersection = scene.hitContext.intersection;
            auto firstNormal = scene.hitContext.normal;
            if(scene.findLightSources()) {
                color = ((1 - Helligkeit) * scene.lambertian_shading(light - firstIntersection, firstNormal, closestObject->material.shininess) + Helligkeit) * color;
            } else {
                color = Helligkeit * color;
            };
            screen.set_pixel(x, y, color);
        }
    }
    screen.write_ppm();
    return 0;
}
