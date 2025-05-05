passa = false
lineW = 0
pod = true

if (!variable_global_exists("phases_unlocked")) {
    global.phases_unlocked = array_create(4, false);
    global.phases_unlocked[0] = true; 
}


if (!variable_global_exists("line_lengths")) {
    global.line_lengths = array_create(3, 0); 
}
