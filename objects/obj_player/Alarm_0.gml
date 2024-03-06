var spawnX, spawnY;
// Evento Alarm[0] no obj_Player
global.invincible = false;


// Seleciona aleatoriamente se o inimigo aparecerá do lado ou de cima
if (irandom(2) == 0) {
    // Aparece na borda superior
    spawnX = irandom(room_width);
    spawnY = -sprite_height; // Coloca o inimigo fora da tela acima
} else {
    // Aparece em um dos lados
    if (irandom(2) == 0) {
        // Aparece na borda esquerda
        spawnX = -sprite_width; // Coloca o inimigo fora da tela à esquerda
        spawnY = irandom(room_height);
    } else {
        // Aparece na borda direita
        spawnX = room_width + sprite_width; // Coloca o inimigo fora da tela à direita
        spawnY = irandom(room_height);
    }
}

// Cria o inimigo nas coordenadas calculadas
instance_create_layer(spawnX, spawnY, "layer_inimigos", obj_enemy);

// Redefine o alarme para disparar novamente após 2 segundos
alarm[0] = room_speed * 1;
