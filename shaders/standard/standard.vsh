attribute vec3 in_Position;                 // (x,y,z)
attribute vec3 in_Normal;					// (x,y,z)
attribute vec2 in_TextureCoord;             // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColor;

uniform vec3 camera_position;
uniform float camera_yaw, camera_pitch;
uniform float near_clip;
const float far_clip = 100000.0;
uniform float screen_ratio;

uniform vec3 v_a, v_b;

uniform int mode;

void rotate(inout vec2 point, float angle);

void main()
{
	//normal rendering
	if(mode == 0)
	{
		vec3 local = in_Position;

		//camera transformation
		local -= camera_position;

		rotate(local.xy, -camera_pitch);
		rotate(local.xz, -camera_yaw);

		//project
		gl_Position.z = length(local.xyz)/far_clip;

		if(local.x == 0.0)
		gl_Position.xy = vec2(0.0);
		else
		gl_Position.xy = local.yz/local.x*near_clip;
	
		gl_Position.x *= screen_ratio;

		gl_Position.w = 1.0;

		v_vColor = vec4(vec3(0xba, 0x36, 0x31), 1.0);//*dot(in_Position - camera_position, in_Normal) ,1.0);
		v_vTexcoord = in_TextureCoord;
		return;
	}
		
	//background rendering
	if(mode == 1)
	{
		vec4 object_space_pos = vec4( in_Position.x, in_Position.y, 1.0, 1.0);
		gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
	
		v_vColor = vec4(v_a*(0.5 + gl_Position.y*0.5) + v_b*(0.5 - gl_Position.y*0.5), abs(gl_Position.y*0.5));
		v_vTexcoord = in_TextureCoord;
		return;
	}
		
	//code rendering
	if(mode == 2)
	{
		
		
		v_vColor = vec4(0xba, 0x36, 0x31,1.0);
		v_vTexcoord = in_TextureCoord;
		return;
	}
	
	//model rendering
	if(mode == 3)
	{
		
		v_vColor = vec4(0xba, 0x36, 0x31,1.0);
		v_vTexcoord = in_TextureCoord;
		return;
	}
		
	//animation rendering
	if(mode == 4)
	{
		
		
		v_vColor = vec4(0xba, 0x36, 0x31,1.0);
		v_vTexcoord = in_TextureCoord;
		return;
	}
}

void rotate(inout vec2 point, float angle)
{
  float X = sin(angle)*point.y - cos(angle)*point.x;
  point.y = cos(angle)*point.y + sin(angle)*point.x;
  point.x = X;
}


