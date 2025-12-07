rightKey = keyboard_check(vk_right);
leftKey  = keyboard_check(vk_left);
upKey    = keyboard_check(vk_up);
downKey  = keyboard_check(vk_down);

dKey = keyboard_check(ord("D"));
aKey = keyboard_check(ord("A"));
wKey = keyboard_check(ord("W"));
sKey = keyboard_check(ord("S"));

xSpeed = ((rightKey || dKey) - (leftKey || aKey)) * movementSpeed;
ySpeed = ((downKey || sKey) - (upKey || wKey)) * movementSpeed;

if (xSpeed > 0) image_xscale = 1;
else if (xSpeed < 0) image_xscale = -1;

if (xSpeed != 0 || ySpeed != 0) {
    if (sprite_index != spr_playerWalk) {
        sprite_index = spr_playerWalk;
        image_speed = 0.5;
    }
} else {
    if (sprite_index != spr_playerIdle) {
        sprite_index = spr_playerIdle;
        image_speed = 0.7;
    }
}

// FIXED COLLISIONS
if (place_meeting(x + xSpeed, y, obj_wall) 
|| place_meeting(x + xSpeed, y, obj_door1) 
|| place_meeting(x + xSpeed, y, obj_door2)
|| place_meeting(x + xSpeed, y, obj_door3))
{ xSpeed = 0; }

if (place_meeting(x, y + ySpeed, obj_wall) 
|| place_meeting(x, y + ySpeed, obj_door1)
|| place_meeting(x, y + ySpeed, obj_door2)
|| place_meeting(x, y + ySpeed, obj_door3))
{ ySpeed = 0; }

x += xSpeed;
y += ySpeed;



if (global.has_weapon)
{
    if (keyboard_check_pressed(ord("J")))
    {
        var p = instance_create_layer(x, y, layer, obj_projectile);

        // Direction based on movement
        if (xSpeed > 0)  p.direction = 0;
        if (xSpeed < 0)  p.direction = 180;
        if (ySpeed < 0)  p.direction = 90;
        if (ySpeed > 0)  p.direction = 270;


        if (xSpeed == 0 && ySpeed == 0)
        {
            if (image_xscale == 1) p.direction = 0;
            else p.direction = 180;
        }

        p.speed = 6;
    }
}



if (keyboard_check_pressed(vk_f1)) {
    var inv = instance_find(obj_inventoryController, 0);
    array_push(inv.inv_items, "key1");
}

if (keyboard_check_pressed(vk_f2)) {
    var inv = instance_find(obj_inventoryController, 0);
    array_push(inv.inv_items, "key2");
}

if (keyboard_check_pressed(vk_f3)) {
    var inv = instance_find(obj_inventoryController, 0);
    array_push(inv.inv_items, "key3");
}

show_debug_message("Has weapon? " + string(global.has_weapon));
show_debug_message("Solved=" + string(global.puzzle2_solved));
show_debug_message("Weapon=" + string(global.has_weapon));
show_debug_message("Return X=" + string(global.return_x));

if (keyboard_check_pressed(ord("P")))
{
    instance_create_layer(x, y, "Instances", obj_weaponPickup);
}
