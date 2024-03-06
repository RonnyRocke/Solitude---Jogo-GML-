// Evento Step de obj_bullet
// Verifica se há colisão com obj_enemy
var enemy_hit = instance_place(x, y, obj_enemy);

if (enemy_hit != noone) {
    // Aumenta a contagem de hits no obj_enemy
    enemy_hit.hits_received += 1;

    // Destroi o obj_bullet
    instance_destroy();
}

// Nota: Se o seu objeto de projétil precisa percorrer distâncias mais longas,
// considere usar place_meeting(x + hspeed, y + vspeed, obj_enemy) para verificar colisões futuras.
