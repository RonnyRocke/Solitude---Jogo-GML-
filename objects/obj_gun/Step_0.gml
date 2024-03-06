x = obj_player.x
y = obj_player.y
fire = mouse_check_button_pressed(mb_left); //ATIRA

var _dire = point_direction(x, y, mouse_x, mouse_y)

image_angle = _dire

var _intervalo = _dire == clamp(_dire, 90, 270)

if(_intervalo)
{
	image_yscale = -1
}
else
{
	image_yscale = 1
}

//checando botão apra atirar

var _click = mouse_check_button_pressed(mb_left)



//TIRO
if (fire)
{
	var _tiro = instance_create_layer(x, y, "Instances", obj_bullet);
	_tiro.speed = 10;
	_tiro.direction = point_direction(x, y, mouse_x, mouse_y);
	audio_play_sound(spr_soundtiro, 1, false);
}