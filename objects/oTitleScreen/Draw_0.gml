draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, .75 );
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
for( var i = 0; i < op_length; i++)
    {
	draw_text(x + op_border, y + op_length + op_space*i , option[i]);
	}