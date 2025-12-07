var px = obj_player.x;
var py = obj_player.y;


if (point_distance(px, py, x, y) < 32)
{
    if (scr_has_key("key3"))
    {

        instance_destroy(); 
    }
}


show_debug_message("Has Key? " + string(scr_has_key("key3")));
show_debug_message("Door X:" + string(x) + " Player X:" + string(obj_player.x));
