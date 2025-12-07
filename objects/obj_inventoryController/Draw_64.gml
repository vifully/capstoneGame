draw_set_color(c_white);
draw_text(50, 10, "Inventory:");

var yy = 40;

for (var i = 0; i < array_length(inv_items); i++) {
    draw_text(35, yy, "" + string(inv_items[i]));
    yy += 20;
}
