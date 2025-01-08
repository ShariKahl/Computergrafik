#include "math.h"       // Enthält mathematische Hilfsfunktionen
#include "geometry.h"   // Definiert geometrische Objekte wie Vektoren und Kugeln
#include <iostream>
#include <vector>
#include <algorithm>
#include <fstream>

// Konstante Parameter für die Szene
const float KANTENLAENGE = 10.0f;
const float TIEFE_MITTELPUNKT = 10.0f;  // / Licht näher an der Kamera
const float RADIUS_RIESENKUGELN = 1000.0f;
const float GRUNDHELLIGKEIT = 0.26f;
const float EPSILON = 0.001f;

// Hilfsfunktion zur Skalierung eines Vektors
Vector3df scale_vector(const Vector3df& v, float scalar) {
    return Vector3df({v[0] * scalar, v[1] * scalar, v[2] * scalar});
}

// Hilfsfunktion für Kreuzprodukt
Vector3df cross_product(const Vector3df& a, const Vector3df& b) {
    return Vector3df({
        a[1] * b[2] - a[2] * b[1],
        a[2] * b[0] - a[0] * b[2],
        a[0] * b[1] - a[1] * b[0]
    });
}

// Bildschirmklasse zur Verwaltung von Pixeln und zur Ausgabe des Bildes
class Screen {
public:
    int nx, ny;
    std::vector<Vector3df> pixels;

    Screen(int nx, int ny) : nx(nx), ny(ny), pixels(nx * ny, Vector3df{0.0f, 0.0f, 0.0f}) {}

    void set_pixel(int x, int y, const Vector3df& color) {
        pixels[y * nx + x] = color;
    }

    void write_ppm() {
        std::ofstream file("RenderedImage.ppm");
        file << "P3\n" << nx << " " << ny << "\n255\n";
        for (int y = ny - 1; y >= 0; --y) {
            for (int x = 0; x < nx; ++x) {
                const Vector3df& color = pixels[y * nx + x];
                file << static_cast<int>(color[0] * 255) << " "
                     << static_cast<int>(color[1] * 255) << " "
                     << static_cast<int>(color[2] * 255) << " ";
            }
            file << "\n";
        }
    }
};

// Kamera zur Generierung von Sehstrahlen
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
    float distance;
    float l;
    float r;
    float t;
    float b;

    Camera(Screen screen, Vector3df eye, Vector3df direction, Vector3df up, float width, float height, float distance)
    : screen(screen),
      eye(eye),
      direction(direction),
      up(up),
      w(direction),        // Initialisiere w mit direction
      u(Vector3df{0.0f, 0.0f, 0.0f}),
      v(Vector3df{0.0f, 0.0f, 0.0f}),
      width(width),
      height(height),
      distance(distance)
    {
        // Bildgrenzen berechnen
        l = -width / 2;
        r = width / 2;
        t = height / 2;
        b = -height / 2;

        // Kamera-Koordinatensystem berechnen
        w.normalize();
        u = cross_product(up, w);
        u.normalize();
        v = cross_product(w, u);
    }

    Ray<float, 3> generate_ray(int x, int y) {
        float p_u = l + (r - l) * (x + 0.5f) / screen.nx;
        float p_v = b + (t - b) * (y + 0.5f) / screen.ny;

        Vector3df ray_direction = scale_vector(w, -distance)
                                + scale_vector(u, p_u)
                                + scale_vector(v, p_v);
        ray_direction.normalize();

        return Ray<float, 3>(eye, ray_direction);
    }
};

// Materialklasse beschreibt Eigenschaften der Oberfläche
class Material {
public:
    Vector3df color;
    float shininess;
    float reflectivity;

    Material(Vector3df color, float shininess, float reflectivity)
        : color(color), shininess(shininess), reflectivity(reflectivity) {}
};

// Wrapper-Klasse für Objekte in der Szene
class WorldObject {
public:
    Sphere3df sphere;
    Material material;

    WorldObject(Sphere3df sphere, Material material) : sphere(sphere), material(material) {}
};

// Szene-Klasse enthält Objekte und Lichtquellen
class Scene {
public:
    Vector3df light;
    std::vector<WorldObject> objects;
    Intersection_Context<float, 3> hitContext;

    Scene(Vector3df light) : light(light) {}

    void add_object(WorldObject object) {
        objects.push_back(object);
    }

    WorldObject* findNearestObject(const Ray<float, 3>& ray) {
        WorldObject* nearestObject = nullptr;
        float minimal_t = INFINITY;

        for (auto& o : objects) {
            Intersection_Context<float, 3> context;
            if (o.sphere.intersects(ray, context) && context.t > EPSILON && context.t < minimal_t) {
                hitContext = context;
                nearestObject = &o;
                minimal_t = context.t;
            }
        }
        return nearestObject;
    }
};

// Raytracing-Funktion
Vector3df raytrace(const Ray<float, 3>& ray, Scene& scene, int depth) {
    if (depth <= 0) return {GRUNDHELLIGKEIT, GRUNDHELLIGKEIT, GRUNDHELLIGKEIT};

    WorldObject* closestObject = scene.findNearestObject(ray);
    if (!closestObject) return {GRUNDHELLIGKEIT, GRUNDHELLIGKEIT, GRUNDHELLIGKEIT};

    Material material = closestObject->material;
    Vector3df normal = scene.hitContext.normal;
    Vector3df intersection = scene.hitContext.intersection;

    Vector3df color = material.color;
    if (material.reflectivity > 0.0f) {
        Vector3df reflection_dir = ray.direction - scale_vector(normal, 2 * (ray.direction * normal));
        reflection_dir.normalize();
        Ray<float, 3> reflected_ray(intersection, reflection_dir);
        color = material.color + material.reflectivity * raytrace(reflected_ray, scene, depth - 1);
    }

    return color;
}

int main() {
    Screen screen(800, 800);
    Scene scene(Vector3df{0.0f, 10.0f, -20.0f});

    scene.add_object(WorldObject(Sphere3df(Vector3df{-2, 0, -15}, 2), Material({0.9f, 0.1f, 0.1f}, 0.5f, 0.5f)));
    scene.add_object(WorldObject(Sphere3df(Vector3df{2, 0, -20}, 3), Material({0.1f, 0.1f, 0.9f}, 0.5f, 0.5f)));

    Camera camera(screen, Vector3df{0, 0, 0}, Vector3df{0, 0, -1}, Vector3df{0, 1, 0}, 10.0f, 10.0f, 10.0f);

    for (int x = 0; x < screen.nx; ++x) {
        for (int y = 0; y < screen.ny; ++y) {
            Ray<float, 3> ray = camera.generate_ray(x, y);
            Vector3df color = raytrace(ray, scene, 5);
            screen.set_pixel(x, y, color);
        }
    }

    screen.write_ppm();
    return 0;
}
