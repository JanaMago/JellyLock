//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;

    vec3 whiteColor = vec3(242.0 / 255.0,245.0 / 255.0,252.0 / 255.0);

    vec3 original = col.rgb;

    float redAmount = pow(original.r, 0.75);

    float otherChannels = max(original.g, original.b);
    float paletteAmount = 1.0 - smoothstep(0.02, 0.15, otherChannels);

    vec3 converted = mix(whiteColor,vec3(0.0, 0.0, 0.0),redAmount);

    col.rgb = mix(original, converted, paletteAmount);

    gl_FragColor = col;
}


