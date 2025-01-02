#type vertex
#version 330 core
layout (location=0) in vec3 aPos;
layout (location=1) in vec4 aColor;
layout (location=2) in vec4 aTexCoords;

uniform mat4 uProjection;
uniform mat4 uView;

out vec4 fColor;
out vec2 aTexCoords;

void main() {
    fColor = aColor;
    fTexCoords = aTexCoords;
    gl_Position = uProjection * uView * vec4(aPos, 1.0);
}

#type fragment
#version 330 core

uniform float uTime;
uniform sampler3D TEX_SAMPLE;

in vec4 fColor;
in vec2 flexCoords;

out vec4 color;

void main() {
    color = texture(TEX_SAMPLE, flexCoords);
}