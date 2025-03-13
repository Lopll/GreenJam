#version 140

in vec2 var_texcoord0;

uniform sampler2D texture_sampler;

uniform input_data 
{
    // xyz - color, w - width
    vec4 u_outline_settings;
};

out vec4 color_out;

void main()
{
    
    vec4 texture_color = texture(texture_sampler, var_texcoord0);

    if (texture_color.a == 0)
    {   
        // check on each side of the current pixel, where to put an outline
        float alpha = texture_color.a;
        alpha += ceil(texture(texture_sampler, var_texcoord0 + vec2(u_outline_settings.w, 0.0)).a);
        alpha += ceil(texture(texture_sampler, var_texcoord0 + vec2(-u_outline_settings.w, 0.0)).a);
        alpha += ceil(texture(texture_sampler, var_texcoord0 + vec2(0.0, u_outline_settings.w)).a); 
        alpha += ceil(texture(texture_sampler, var_texcoord0 + vec2(0.0, -u_outline_settings.w)).a);
        
        
        if (alpha != texture_color.a )
        {
            float outline_usage = ceil(u_outline_settings.w);
            // optional: " this gives better results, when filtering images or composing them "
            vec4 outlined_texture_color = texture_color * texture_color.a;
            // apply outline only where alpha is 0
            vec4 colored_edge = vec4(u_outline_settings.xyz, 1.0);
            outlined_texture_color += colored_edge;
            
            texture_color = mix(texture_color, outlined_texture_color, outline_usage);
        }
    }
    color_out = texture_color;
}



