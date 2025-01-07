#include "math.h"      
#include "geometry.h"   
#include <iostream>
#include <vector>
#include <algorithm>
#include <fstream>

// Konstanten für die Szene
const float SZENENKANTE = 20.0f;        // Kantenlänge der Cornell-Box
const float TIEFE_MITTELPUNKT = 20.0f;  // Tiefe des Mittelpunktes der Szene
const float RADIUS_KUGELN = 1000.0f;     // Radius der großen Kugeln, die die Wände darstellen
const float GRUNDHELLIGKEIT = 0.5f;    // Grundhelligkeit der Szene
const float EPSILON = 0.001f;           // Kleiner Wert zur Vermeidung von Fließkommaungenauigkeiten

// Bildschirmklasse zur Verwaltung von Pixeln und zur Ausgabe des Bildes
class Screen {
public:
    int image_width; 
    int image_height; 
    std::vector<Vector3df> pixels; 

    // Konstruktor zur Initialisierung der Bildschirmgröße und der Pixel
    Screen(int image_width, int image_height) : image_width(image_width), image_height(image_height), pixels(image_width * image_height, Vector3df{0.0f, 0.0f, 0.0f}) {}

    // Methode zum Setzen der Farbe eines Pixels
    void write_color(int i, int j, const Vector3df& pixel_color) {
        pixels[j * image_width + i] = pixel_color;
    };

    // Methode zum Speichern des Bildes im PPM-Format
    void write_ppm() {
        std::ofstream file("RenderedImage.ppm"); // Datei zum Schreiben öffnen
        file << "P3\n" << image_width << " " << image_height << "\n255\n"; 
        for (int j = 0; j < image_height; j++) { 
            for (int i = 0; i < image_width; i++) { 
                const Vector3df& pixel_color = pixels[j * image_width + i];
                file << static_cast<int>(std::clamp(pixel_color[0], 0.0f, 1.0f) * 255) << " " // Rot-Wert
                     << static_cast<int>(std::clamp(pixel_color[1], 0.0f, 1.0f) * 255) << " " // Grün-Wert
                     << static_cast<int>(std::clamp(pixel_color[2], 0.0f, 1.0f) * 255) << " "; // Blau-Wert
            }
            file << "\n";
        }
    }
};

// Kamera-Klasse zur Generierung von Sehstrahlen
class Camera {
public:
    Screen screen;          
    Vector3df eye;          
    Vector3df direction;    
    Vector3df up;           
    Vector3df w;            
    Vector3df u;            
    Vector3df v;            
    float width;            
    float height;           
    float distance;         // Abstand zur Bildebene
    float l;                // Linke Grenze 
    float r;                // Rechte Grenze 
    float t;                // Obere Grenze 
    float b;                // Untere Grenze 

    // Konstruktor zur Initialisierung der Kamera
    Camera(Screen screen, Vector3df eye, Vector3df direction, Vector3df up, float width, float height, float distance, Vector3df u, Vector3df v, Vector3df w)
        : screen(screen),
          eye(eye),
          direction(direction),
          up(up),
          w(w),
          u(u),
          v(v)
    {
        this->width = width; // Breite der Bildebene
        this->height = height; // Höhe der Bildebene
        this->distance = distance; // Abstand zur Bildebene

        this->l = -width / 2; // Linke Grenze der Bildebene
        this->r = width / 2; // Rechte Grenze der Bildebene
        this->t = height / 2; // Obere Grenze der Bildebene
        this->b = -height / 2; // Untere Grenze der Bildebene
    }

    // Methode zur Generierung eines Sehstrahls für einen bestimmten Pixel
    Ray<float, 3u> generate_ray(int i, int j) {
        // Berechnung der Position des Pixels in der Bildebene
        float p_u = l + (r - l) * (i + 0.5f) / screen.image_width;
        float p_v = b + (t - b) * (j + 0.5f) / screen.image_height;

        // Berechnung der Richtung des Sehstrahls
        Vector3df ray_direction = (eye - (distance * w)) + p_u * u + p_v * v;
        ray_direction.normalize();

        // Rückgabe des generierten Sehstrahls
        return Ray<float, 3u>(eye, ray_direction);
    }
};

// Materialklasse beschreibt Objektoberfläche mit ambienten, diffusem und reflektiven Farbanteil
class Material {
public:
    Vector3df pixel_color;
    float shininess;
    float reflectivity;
    float refraction_index;

    Material(Vector3df pixel_color, float shininess, float reflectivity, float refraction_index)
        : pixel_color(pixel_color), shininess(shininess), reflectivity(reflectivity), refraction_index(refraction_index) {}
};

// Wrapper-Klasse für "Objekt", z.B. eine Kugel oder ein Dreieck, und dem zugehörigen Material der Oberfläche in der Szene
class Object {
public:
    Sphere3df sphere;
    Material material;

    Object(Sphere3df sphere, Material material) : sphere(sphere), material(material) {}
};

// Szene-Klasse enthält Objekte und Lichtquellen und Funktionen, wie Lambertian-Shading
class Scene {
public:
    Vector3df light;
    std::vector<Object> objects;
    Intersection_Context<float, 3> hitContext;

    Scene(Vector3df light) : light(light), objects() {}

    void add_object(Object object) {
        objects.push_back(object);
    }

// Die Cornelbox aufgebaut aus den Objekten
// Am besten verwendet man hier einen std::vector< ... > von Objekten.

// Punktförmige "Lichtquellen" können einfach als Vector3df implementiert werden mit weisser Farbe,
// bei farbigen Lichtquellen müssen die entsprechenden Daten in Objekt zusammengefaßt werden
// Bei mehreren Lichtquellen können diese in einen std::vector gespeichert werden.

// Sie benötigen eine Implementierung von Lambertian-Shading, z.B. als Funktion
// Benötigte Werte können als Parameter übergeben werden, oder wenn diese Funktion eine Objektmethode eines
// Szene-Objekts ist, dann kann auf die Werte teilweise direkt zugegriffen werden.
// Bei mehreren Lichtquellen muss der resultierende diffuse Farbanteil durch die Anzahl Lichtquellen geteilt werden.

    float lambertian_shading(Vector3df light, Vector3df normal, float kd, float ambient) {
        Vector3df l = light;
        l.normalize();
        Vector3df n = normal;
        n.normalize();

        float diffuse = kd * std::max(0.0f, n * l);
        return ambient + diffuse; // Basishelligkeit plus diffuses Licht
    }

// Für einen Sehstrahl aus allen Objekte, dasjenige finden, das dem Augenpunkt am nächsten liegt.
// Am besten einen Zeiger auf das Objekt zurückgeben. Wenn dieser nullptr ist, dann gibt es kein sichtbares Objekt.
    Object* findClosestObject (Ray3df ray) {
        Object *closestObject  = nullptr;
        float minimal_t = INFINITY;

        Intersection_Context<float, 3> intersectionContext;
        for (Object &o : objects){
            //if the ray intersects with the object
            bool found = o.sphere.intersects(ray, intersectionContext);
            if (found && (intersectionContext.t > 0 + EPSILON) && (intersectionContext.t < minimal_t - EPSILON)){
                hitContext = intersectionContext;
                closestObject = &o;
                minimal_t = intersectionContext.t;
            }
        }
        return closestObject ;
    }
    
    bool findLightSourcesFromLastHitContext(Scene& scene){
        Ray3df shadow_ray(hitContext.intersection, scene.light - hitContext.intersection);
        Object* blocker =  scene.findClosestObject(shadow_ray);

        if(blocker && hitContext.t > EPSILON && hitContext.t < 1.0f - EPSILON){
            return false; // Licht ist blockiert
        } else {
            return true; // Licht erreicht den Punkt
        }
    }
};

// Raytracing-Funktion
Vector3df raytrace(Ray<float, 3> ray, Scene scene, int depth) {
    Vector3df pixel_color = {GRUNDHELLIGKEIT, GRUNDHELLIGKEIT, GRUNDHELLIGKEIT};    // Basishelligkeit für das Pixel setzen

    // aktuelle Rekursionstiefe überprüfen, die die maximale Anzahl von Reflexionen begrenzt
    if (depth != 0) {
        Object* closeObject = scene.findClosestObject(ray);
        if (closeObject == nullptr) { // Wenn kein Objekt vom Strahl getroffen wird, wird die Basishelligkeit zurückgegeben
            return pixel_color;
        }

        Material materialFound = closeObject->material;
        Vector3df normal = scene.hitContext.normal;
        normal.normalize();
        Vector3df intersection = scene.hitContext.intersection;

        if (materialFound.reflectivity > 0.0f) {    // Wenn das Material reflektiv ist, wird der reflektierte Strahl berechnet
            Vector3df direction = ray.direction;
            Vector3df reflection = direction - 2 * (direction * normal) * normal;
            reflection.normalize();
            Ray3df reflected_ray = Ray3df(intersection, reflection);
            pixel_color = materialFound.pixel_color + materialFound.reflectivity * raytrace(reflected_ray, scene, depth - 1);
        }

        // endgültige Farbe des Pixels berechnen
        // pixel_color = (scene.lambertian_shading(scene.light - intersection, normal, materialFound.shininess) + 0.3f * GRUNDHELLIGKEIT) * pixel_color;

        pixel_color = (scene.lambertian_shading(scene.light - intersection, normal, materialFound.shininess, 0.5f) + 0.3f * GRUNDHELLIGKEIT) * pixel_color;
        pixel_color[0] = std::clamp(pixel_color[0], 0.0f, 1.0f);
        pixel_color[1] = std::clamp(pixel_color[1], 0.0f, 1.0f);
        pixel_color[2] = std::clamp(pixel_color[2], 0.0f, 1.0f);

        // Ausgabe der Pixel-Farbe
        // std::cout << "Pixel-Farbe: (" << pixel_color[0] << ", " << pixel_color[1] << ", " << pixel_color[2] << ")" << std::endl;

    }
    return pixel_color;
}


int main() {
    // Bildschirm erstellen
    // Kamera erstellen
    // Für jede Pixelkoordinate x,y
    //   Sehstrahl für x,y mit Kamera erzeugen
    //   Farbe mit raytracing-Methode bestimmen
    //   Beim Bildschirm die Farbe für Pixel x,y, setzten

    // Lichtquelle in der Szene definieren
    Vector3df light = {0.0, (SZENENKANTE/2) - 0.5f, -TIEFE_MITTELPUNKT};
    Scene scene = Scene(light);

    // Positionen der Wände und Kugeln in der Szene definieren
    Vector3df centerLeft = {-1005.0, 0.0, -20.0};
    Vector3df centerRight = {1005.0, 0.0, -20.0};
    Vector3df centerTop = {0, 1005.0, -20.0};
    Vector3df centerBottom = {0, -1005.0, -20.0};
    Vector3df centerBack = {0, 0, -1025.0};

    Vector3df centerSphere1 = {-2.0, 3.5, -18.0};
    Vector3df centerSphere2 = {2.0, 3.5, -22.0};
    Vector3df centerSphere3 = {-1.0, 2.5, -23.0};

    // Kugeln für die Wände und Objekte erstellen
    Sphere3df sphereLeft = Sphere3df(centerLeft, RADIUS_KUGELN);
    Sphere3df sphereRight = Sphere3df(centerRight, RADIUS_KUGELN);
    Sphere3df sphereTop = Sphere3df(centerTop, RADIUS_KUGELN);
    Sphere3df sphereBottom = Sphere3df(centerBottom, RADIUS_KUGELN);
    Sphere3df sphereBack = Sphere3df(centerBack, RADIUS_KUGELN);

    Sphere3df sphere1 = Sphere3df(centerSphere1, 1.5);
    Sphere3df sphere2 = Sphere3df(centerSphere2, 1.8);
    Sphere3df sphere3 = Sphere3df(centerSphere3, 1.0);

    // Objekte mit Materialien erstellen
    Object objectLeft = Object(sphereLeft, Material({1.0, 0.0, 0.0}, 0.4, 0.9, 0.0)); // Kräftigeres Rot
    Object objectRight = Object(sphereRight, Material({0.0, 1.0, 0.0}, 0.4, 0.3, 0.0)); // Kräftigeres Grün
    Object objectTop = Object(sphereTop, Material({0.2, 0.2, 0.2}, 0.4, 0.3, 0.0)); // Kräftigeres Grau
    Object objectBottom = Object(sphereBottom, Material({1.0, 1.0, 1.0}, 0.8, 0.3, 0.0)); // Weiß
    Object objectBack = Object(sphereBack, Material({1.0, 1.0, 1.0}, 0.4, 0.3, 0.0)); // Weiß

    Object object1 = Object(sphere1, Material({0.0, 0.0, 1.0}, 0.6, 0.9, 0.0)); // Kräftigeres Blau
    Object object2 = Object(sphere2, Material({1.0, 0.0, 0.0}, 0.4, 0.3, 0.0)); // Kräftigeres Rot
    Object object3 = Object(sphere3, Material({1.0, 1.0, 0.0}, 0.7, 0.94, 0.0)); // Kräftigeres Gelb

    // Objekte zur Szene hinzufügen
    scene.add_object(objectLeft);
    scene.add_object(objectRight);
    scene.add_object(objectTop);
    scene.add_object(objectBottom);
    scene.add_object(objectBack);

    scene.add_object(object1);
    scene.add_object(object2);
    scene.add_object(object3);

    // Bildschirm erstellen
    Screen screen = Screen(1000, 1000);

    // Kamera erstellen
    Vector3df eye = {0.0, 0.0, 0.0};
    Vector3df direction = {0.0, 0.0, 1.0};
    Vector3df up = {0.0, 1.0, 0.0};
    Vector3df w = Vector3df {0.0, 0.0, 1.0};
    Vector3df u = Vector3df {1.0, 0.0, 0.0};
    Vector3df v = Vector3df {0.0, 1.0, 0.0};
    Camera camera = Camera(screen, eye, direction, up, 10.0f, 10.0f, 15.0f, u, v, w);

    // Für jede Pixelkoordinate x,y
    for (int x = 0; x < screen.image_width; x++) {
        for (int y = 0; y < screen.image_height; y++) {
            // Sehstrahl für x,y mit Kamera erzeugen
            Ray<float, 3> ray = camera.generate_ray(x, y);
            // Farbe mit raytracing-Methode bestimmen
            Vector3df pixel_color = raytrace(ray, scene, 3);
            // Nächstgelegenes Objekt finden
            Object* closestObject = scene.findClosestObject(ray);
            if (closestObject != nullptr) {
                auto firstNormal = scene.hitContext.normal;
                if(scene.findLightSourcesFromLastHitContext(scene)) {
                    pixel_color = ((1 - GRUNDHELLIGKEIT) * scene.lambertian_shading(light, firstNormal, closestObject->material.shininess, GRUNDHELLIGKEIT) + GRUNDHELLIGKEIT) * pixel_color;
                } else {
                    pixel_color = GRUNDHELLIGKEIT * pixel_color;
                }
            }
            screen.write_color(x, y, pixel_color);
        }
    }
    // Bild speichern
    screen.write_ppm();
    return 0;
}
