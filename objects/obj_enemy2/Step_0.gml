movimento = "perseguir"

if (distance_to_object(obj_player) < 1)
{movimento = "perseguir";}

if (movimento = "perseguir")
{
   
    move_towards_point(obj_player.x,obj_player.y,2);
}
else{
    speed = 0;
}

if hspeed<0
{
sprite_index=spr_enemy2
}
if hspeed>0
{
sprite_index=spr_enemy2direita
}


