﻿/////////////////////////////////////////////////////////
// Screen effect
varying mediump vec2 vTex;
uniform lowp sampler2D samplerFront;
uniform lowp sampler2D samplerBack;
uniform mediump vec2 destStart;
uniform mediump vec2 destEnd;

void main(void)
{
	// Retrieve front and back pixels
	lowp vec4 front = texture2D(samplerFront, vTex);
	lowp vec4 back = texture2D(samplerBack, mix(destStart, destEnd, vTex));
	
	// Screen blend
	front.rgb = 1.0 - ((1.0 - front.rgb) * (1.0 - back.rgb * front.a));

	gl_FragColor = front;
}
