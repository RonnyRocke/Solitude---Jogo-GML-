#region CONTROLES
key_right = keyboard_check(ord("D"))		// DIREITA
key_left = keyboard_check(ord("A"))			// ESQUERDA
key_jump = keyboard_check(vk_space)		// PULA
#endregion

#region MOVIMENTAÇÃO
var move = key_right - key_left

hspd = move * spd;

vspd = vspd + grv;

if (hspd != 0) image_xscale = sign(hspd);

//COLISÃO HORIZONTAL
if place_meeting(x+hspd,y,obj_wall)
{
	while(!place_meeting(x+sign(hspd),y,obj_wall))
	{
		x = x + sign(hspd);
	}
hspd = 0;
}
x = x + hspd;


//COLISÃO VERTICAL
if place_meeting(x,y+vspd,obj_wall)
{
	while(!place_meeting(x,y+sign(vspd),obj_wall))
	{
y = y + sign(vspd);
	}
vspd = 0;
}
y = y + vspd;


//JUMP
if place_meeting(x,y+1,obj_wall) and key_jump
{
vspd -= 7;

}

#endregion

if global.life < 1 {
	game_restart();
}
#region Troca os sprites
	if (!place_meeting(x,y+1,obj_wall))
{
  sprite_index = spr_player1;
  if (sign(vspd) > 0.5) sprite_index = spr_player1; else sprite_index = spr_player1; 
	}
else
{
	if (hspd != 0)
	{
   sprite_index = spr_playerrunning_left;
	}
}
if hspd = 0 {
	if place_meeting(x,y+1,obj_wall) {
		
	sprite_index = spr_player1
	}
}

if hspd != 0 {
	if place_meeting(x,y+1,obj_wall){
	sprite_index = spr_playerrunning_right;
	}
	
}

#endregion

#region //arma girando

var _dire = point_direction(x, y, mouse_x, mouse_y)

var _intervalo = _dire == clamp(_dire, 90, 270)

if(_intervalo)
{
	image_xscale = -1
}
else
{
	image_xscale = 1
}

if(x <=525)
{	// Colidir para o canto esquerdo da tela
	x = 525
}

if( x >= 3266)
{	// Colidir para o canto direito da tela
	x = 3266
}

#endregion

// Evento Step de obj_player

// Armazene as coordenadas do próximo movimento
var next_x = x + hspeed;
var next_y = y + vspeed;

// Verifique se há colisão na próxima posição
if (!place_meeting(next_x, next_y, obj_wall)) {
    // Se não houver colisão, mova o jogador
    x = next_x;
    y = next_y;
}
// obj_player Step Event

// Evento Step de obj_player
#region Diálogo
	
	if distance_to_object(obj_par_npcs) <= 10{
	if keyboard_check_pressed(ord("F")){
	var _npc = instance_nearest(x, y, obj_par_npcs);
	var _dialogo = instance_create_layer(x, y, "dialogo", obj_dialogo);
	_dialogo.npc_nome = _npc.nome;
	}
}


#endregion






