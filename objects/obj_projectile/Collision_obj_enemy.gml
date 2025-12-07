other.hp -= 1;   
instance_destroy(); 

if (other.hp <= 0)
{
    instance_destroy(other);
	room_goto(rm_win);

}
