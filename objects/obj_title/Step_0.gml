if (keyboard_check_pressed(vk_enter)) {
    room_goto(rm_main);
}

if (keyboard_check_pressed(ord("I"))) {
    room_goto(rm_instructions);
}
