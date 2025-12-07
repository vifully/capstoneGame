var cx = display_get_gui_width()  * 0.5;
var cy = display_get_gui_height() * 0.5;

// Title

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(cx, cy - 140, "UNSCRAMBLE THE WORDS");
draw_text(cx, cy - 120, "Use capital letters");

// Progress indicator
draw_set_color(c_lime);
draw_text(cx, cy - 80, "Word " + string(current_word + 1) + " of 3");

// Scrambled word
draw_set_color(c_yellow);
draw_text(cx, cy - 20, scrambled);

// Player input box
draw_set_color(c_white);
draw_text(cx, cy + 60, "Your Answer:");
draw_set_color(c_aqua);
draw_text(cx, cy + 100, player_input);

// Instructions
draw_set_color(c_gray);
draw_text(cx, cy + 160, "Press ENTER to submit");
