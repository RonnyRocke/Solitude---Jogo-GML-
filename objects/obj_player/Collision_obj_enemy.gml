// Evento de Colisão no obj_Player com obj_Inimigo
if (place_meeting(x, y, obj_enemy)) {
    // Verifica se o player não está temporariamente invulnerável
    if (!global.invincible) {
        // Reduz a vida do jogador
        global.life -= 1;

        // Configura um período de invulnerabilidade após ser atingido (evita múltiplos danos instantâneos)
        global.invincible = true;
        alarm[0] = room_speed * 2; // Define o alarme para desativar a invulnerabilidade após 2 segundos

        // Verifica se o jogador ainda tem vida
        if (global.life <= 0) {
			game_restart();
            // Código para quando o jogador fica sem vida (por exemplo, reiniciar o jogo)
            // Coloque o código apropriado aqui
        }
    }
}
