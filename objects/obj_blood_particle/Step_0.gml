// Evento Step de obj_particle_blood

// Diminuir o tempo de vida
lifetime -= 5;

// Se a vida útil atingir zero, destruir a partícula
if (lifetime <= 0) {
    instance_destroy();
}

// Aplicar gravidade
speed_y += gravity;

// Verificar colisão com o solo (obj_wall)
if (place_meeting(x, y + speed_y, obj_wall)) {
    // Se houver colisão, ajuste a posição e pare a partícula
    y = floor((y + speed_y) / 16) * 16; // Ajuste para a grade (opcional)
    speed_y = 0;
    lifetime = 0; // Garanta que a partícula seja destruída imediatamente ao atingir o solo
}

// Atualizar a posição
x += 0; // Não mova horizontalmente
y += speed_y; // Apenas mova verticalmente


