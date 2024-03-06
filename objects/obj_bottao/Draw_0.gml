// Se desenhando
draw_self()

//Desenhar o texto
draw_set_halign(1)
draw_set_valign(1)
draw_set_color(c_white)
draw_set_font(fnt_texto)


draw_text(x + sprite_width / 2, y + sprite_height / 2, texto)


draw_set_halign(-1)
draw_set_valign(-1)
draw_set_color(-1)
draw_set_font(-1)