
if (global.puzzle2_solved)
{
  
    x = global.return_x;
    y = global.return_y;

show_debug_message("Attempting to spawn weapon");

    if (!instance_exists(obj_weaponPickup))
    {
        instance_create_layer(x + 16, y, "Instances", obj_weaponPickup);
    }


    with (obj_trigger2)
    {
        instance_destroy();
    }

    // Reset puzzle start flag
    global.puzzle2_started = false;
}
show_debug_message("Spawned weapon object: " + string(instance_exists(obj_weaponPickup)));

