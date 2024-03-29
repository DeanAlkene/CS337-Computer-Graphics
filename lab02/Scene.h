//
// Created by dean on 19-10-26.
//

#ifndef LAB02_SCENE_H
#define LAB02_SCENE_H

#include "Object.h"

class Scene
{
    friend class Game;
private:
    Object lights;
    Object stopSigns;
    Object speedLimit;
    Object trafficLight;
    Object trees;
    Object ground;
public:
    Scene()
            : lights(std::string("./Scene/Lights.obj")),
              stopSigns(std::string("./Scene/StopSign/StopSign.obj")),
              speedLimit(std::string("./Scene/SpeedLimit/SpeedLimit.obj")),
              trafficLight(std::string("./Scene/trafficlight/trafficlight.obj")),
              trees(std::string("./Scene/Palm/Palm.obj")),
              ground(std::string("./Scene/Ground/Ground.obj")) {}

    void Draw(Shader &shader) {
        lights.Draw(shader);
        stopSigns.Draw(shader);
        speedLimit.Draw(shader);
        trafficLight.Draw(shader);
        trees.Draw(shader);
        ground.Draw(shader);
    }
};
#endif //LAB02_SCENE_H
