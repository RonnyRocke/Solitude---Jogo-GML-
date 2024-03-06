movimento = "perseguir"

if (distance_to_object(obj_playercopia) < 1)
{movimento = "perseguir";}

if (movimento = "perseguir")
{
   
    move_towards_point(obj_playercopia.x,obj_playercopia.y,2);
}
else{
    speed = 0;
}

if hspeed<0
{
sprite_index=spr_enemy
}
if hspeed>0
{
sprite_index=spr_enemy_direita
}


