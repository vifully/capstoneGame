var px = obj_player.x;
var py = obj_player.y;


if (abs(px - x) < 24 && abs(py - y) < 24)
{
    if (scr_has_key("key1"))
    {
        instance_destroy();
    }
}


show_debug_message("Has Key? " + string(scr_has_key("key1")));
show_debug_message("Door X:" + string(x) + " Player X:" + string(obj_player.x));

