obj_player.hp -= 1;
instance_destroy();

if (obj_player.hp <= 0)
{
    room_restart(); 
}
