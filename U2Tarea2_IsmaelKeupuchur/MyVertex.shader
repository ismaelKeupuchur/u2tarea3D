#version 330 core
layout(location = 1) in vec2 vertexUV;
layout(location = 0) in vec3 vertexPosition_modelspace;
out vec3 fragmentColor;
out vec2 UV;
void main(){
    gl_Position.xyz = vertexPosition_modelspace*0.5 - vec3(0.1,0.1,0.1);
    
    if(gl_Position.y < 0 ){
        gl_Position.y = - gl_Position.y;
    }
    
    gl_Position.w = 1.0;
    UV = vertexUV;
}