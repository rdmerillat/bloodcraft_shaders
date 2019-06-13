#version 120

varying vec3 tintColor;
varying vec4 texcoord;
varying vec3 normal;

void main() {
    gl_Position = ftransform();

    texcoord = gl_MultiTexCoord0;
    tintColor = gl_Color.rgb;
    normal = normalize(gl_NormalMatrix * gl_Normal);
}