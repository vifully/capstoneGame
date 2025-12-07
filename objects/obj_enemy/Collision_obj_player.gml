with (other) {
    hp -= 1;
}

if (obj_player.hp <= 0)
{
    room_goto(rm_lose);
}
