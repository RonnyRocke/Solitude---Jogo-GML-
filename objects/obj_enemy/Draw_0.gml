draw_sprite(spr_enemy,-1,x+0,y+0)  // desenhar a prite
draw_healthbar(x+1,y+50,x+40,y+62,health,c_red,16711680,255,0,1,1);  // ajuste os valores de x e de y como desejar
draw_text(x+20,y+20,string(vida))  // desenha as vidas da nave, pode ajustar x e y também
