/// @description Insert description here
// You can write your code in this editor
var camX = camera_get_view_x(view_camera[0]);
var camY = camera_get_view_y(view_camera[0]);

var _p = .5;

draw_sprite_tiled(sForestBacking,0, camX*_p, camY*_p);