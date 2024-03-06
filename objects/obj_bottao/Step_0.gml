var _encima = position_meeting(mouse_x, mouse_y, self)
var _click = mouse_check_button(mb_left)

if(texto == "JOGAR")
{
	
	if(_encima and _click)
	{
		room_goto(destino)
	}
}
else if(texto == "SAIR")
{
	if(_encima and _click)
	{
		game_end()
	}
}