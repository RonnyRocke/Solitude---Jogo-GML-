if inicializar == false{
	scr_textos();
	inicializar = true;
	
}

if mouse_check_button_pressed(mb_right)
{
if pagina < array_length_1d(texto) -1{
		pagina++;
	}else{
		global.dialogo = false;
		instance_destroy();
	}
}