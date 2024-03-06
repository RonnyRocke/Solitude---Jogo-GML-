// Código no evento Create do obj_enemy
grv = 0.4;
var (vida)=50;  // 3 é a vida do inimigo
health=50; 
// No Create Event de obj_enemy




speed = 2  ; // Ajuste a velocidade conforme necessário
hits_received = 0;
// Evento Create de obj_enemy
movement_speed = 3; // Set your desired initial movement speed
// Create Event of obj_enemy

// Evento Create de obj_enemy
spawn_timer = 150;

// Evento Create do obj_enemy


if room != Room3 {  // Substitua "room3" pelo nome da sala onde você não quer que os inimigos apareçam
    // Coloque aqui o restante do código de inicialização dos inimigos, se houver
}
else {
    instance_destroy();  // Destruir automaticamente os inimigos na sala indesejada
}

