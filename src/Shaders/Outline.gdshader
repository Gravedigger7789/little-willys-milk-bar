shader_type canvas_item;

uniform vec4 outline_color : hint_color = vec4(1.0);
uniform float width : hint_range(0, 10) = 1.0;

void vertex(){
    VERTEX += (UV * 2.0 - 1.0) * width ;
}

void fragment() {
	vec2 original_texture_size = 1.0 / TEXTURE_PIXEL_SIZE;
	vec2 texture_pixel_size_with_margin = 1.0 / (original_texture_size + (width * 2.0));
	vec2 size_with_margin = texture_pixel_size_with_margin * width;
	vec2 uv_size_with_margin = UV - size_with_margin;
	vec2 ratio = TEXTURE_PIXEL_SIZE / texture_pixel_size_with_margin;
	vec2 uv_scaled = uv_size_with_margin * ratio;

	vec4 color = texture(TEXTURE, uv_scaled);

	if (uv_scaled != clamp(uv_scaled, vec2(0.0), vec2(1.0))) {
	    color.a = 0.0;
	}

	if (width < 0.1 || outline_color.a <= 0.0) {
		COLOR = color;
	} else {
		float outline = 0.0;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(-1,-1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(-1,0))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(-1,1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(0,-1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(0,1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(1,-1))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(1,0))).a;
		outline += texture(TEXTURE, uv_scaled + (size_with_margin * vec2(1,1))).a;
		outline = min(outline, 1.0);

		COLOR = mix(color, outline_color, outline - color.a);
	}
}
