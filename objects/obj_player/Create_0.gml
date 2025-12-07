xSpeed = 0;
ySpeed = 0;
movementSpeed = 1;
hp = 3


if (!variable_global_exists("puzzle2_solved"))
    global.puzzle2_solved = false;

if (!variable_global_exists("puzzle2_started"))
    global.puzzle2_started = false;

if (!variable_global_exists("has_weapon"))
    global.has_weapon = false;

if (!variable_global_exists("return_x"))
    global.return_x = x;

if (!variable_global_exists("return_y"))
    global.return_y = y;
