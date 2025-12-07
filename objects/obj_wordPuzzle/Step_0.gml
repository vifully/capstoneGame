if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(player_input) > 0) {
        player_input = string_delete(player_input, string_length(player_input), 1);
    }
}


var c = keyboard_lastchar;
for (var k = ord("A"); k <= ord("Z"); k++) {
    if (keyboard_check_pressed(k)) {
        player_input += chr(k);
    }
}


if (keyboard_check_pressed(vk_enter)) {

    if (player_input == solution) {

        current_word++;

        if (current_word >= 3) {

      
            global.puzzle2_solved = true;
			global.has_weapon = true; 
		
     
            room_goto(rm_main);

        } else {

    
            scrambled = sequence[current_word][0];
            solution  = sequence[current_word][1];
            player_input = "";
        }

    } else {

        player_input = "";
    }
}
