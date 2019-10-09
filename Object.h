//
// Created by dean on 19-10-9.
//

#ifndef LAB01_OBJECT_H
#define LAB01_OBJECT_H

#include "Utils.h"

const int WINDOW_WIDTH = 1000;
const int WINDOW_HEIGHT = 800;
const float radius = 500.0f;
const float diameter = 2 * radius;

enum CLICK_STATUS
{
    LEFT_ONLY,
    RIGHT_ONLY,
    LEFT_AND_RIGHT
};

class Object
{
private:
    void loadObj(const char* filename)
    {
        std::ifstream in;
        std::string line;
        in.open(filename);
        if(!in)
        {
            std::cerr << "Failed to open " << filename << std::endl;
            exit(1);
        }

        while(getline(in, line))
        {
            if(line.substr(0,2) == "v ")
            {
                std::istringstream is(line.substr(2));
                glm::vec3 v;
                is >> v.x >> v.y >> v.z;
                vertices.push_back(v);
            }
            else if(line.substr(0,2) == "f ")
            {
                std::istringstream is(line.substr(2));
                GLuint a, b, c;
                is >> a >> b >> c;
                a--;
                b--;
                c--;
                faces.push_back(a);
                faces.push_back(b);
                faces.push_back(c);
            }
        }
        in.close();
    }

    void calculateNormal()
    {
        normals.resize(vertices.size(), glm::vec3(0.0,0.0,0.0));
        vertexNormCount.resize(vertices.size(), 0);

        for(auto i = 0; i < faces.size(); i += 3)
        {
            GLuint x, y, z;
            x = faces[i];
            y = faces[i+1];
            z = faces[i+2];
            glm::vec3 n = glm::normalize(glm::cross((vertices[y]-vertices[x]),(vertices[z]-vertices[y])));
            normals[x] += n;
            normals[y] += n;
            normals[z] += n;
            vertexNormCount[x]++;
            vertexNormCount[y]++;
            vertexNormCount[z]++;
        }
        for(auto i = 0; i < vertices.size(); ++i)
        {
            normals[i] = glm::normalize(normals[i] / (float)vertexNormCount[i]);
        }
        for(auto i = 0; i < vertices.size(); ++i)
        {
            vertexAndNormal.push_back(vertices[i]);
            vertexAndNormal.push_back(normals[i]);
        }
    }
public:
    std::vector<glm::vec3> vertices;
    std::vector<glm::vec3> normals;
    std::vector<glm::vec3> vertexAndNormal;
    std::vector<GLuint> faces;
    std::vector<GLuint> vertexNormCount;
    glm::mat4 model;

    Object(const char* filename)
    {
        model = glm::mat4(1.0f);
        loadObj(filename);
        calculateNormal();
    }

    void processMouseDrag(CLICK_STATUS status, float xoffset, float yoffset)
    {
        if(status == LEFT_ONLY)
        {
            glm::vec3 dir = glm::vec3(xoffset / (float)WINDOW_WIDTH, yoffset / (float)WINDOW_HEIGHT, 0.0f);
            model = glm::translate(model, dir);
        }
        else if(status == LEFT_AND_RIGHT)
        {
            glm::vec3 axis = glm::normalize(glm::vec3(-yoffset, xoffset, 0.0f));
            float dist = glm::length(glm::vec2(xoffset, yoffset));
            model = glm::rotate(model, 2*glm::asin(dist / diameter), axis);
        }
    }

};

#endif //LAB01_OBJECT_H
