varying vec2 v_vTexcoord;
varying vec4 v_vColor;

uniform int texture_ID;

void main()
{
	if(texture_ID == -1)
	gl_FragColor = v_vColor;
	else
    gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord );
}