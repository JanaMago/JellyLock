// this is so that he is always on top, if you want anything ontop of him make it lower than this
depth = -1

//shader_set(ShaderRedScale)

draw_sprite(MPlayerHitbox, 0, x, y)

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

//shader_reset()