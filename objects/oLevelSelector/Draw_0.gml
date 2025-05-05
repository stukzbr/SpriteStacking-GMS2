var houses = [oHouse, oHouse2, oHouse3, oHouse4];


for (var i = 0; i < array_length(houses) - 1; i++) {
    var start_obj = houses[i];
    var end_obj = houses[i + 1];

    var x1 = start_obj.x;
    var y1 = start_obj.y;
    var x2 = end_obj.x;
    var y2 = end_obj.y;

    var dist = point_distance(x1, y1, x2, y2);
    var dir = point_direction(x1, y1, x2, y2);


    draw_line_width_color(x1, y1, x2, y2, 7, c_gray, c_gray);


    if (global.phases_unlocked[i + 1]) {
        global.line_lengths[i] = lerp(global.line_lengths[i], dist, 0.04);
    } else {
        global.line_lengths[i] = lerp(global.line_lengths[i], 0, 0.05);
    }


    var xx = lengthdir_x(global.line_lengths[i], dir);
    var yy = lengthdir_y(global.line_lengths[i], dir);

    // Desenha a linha branca
    draw_line_width_color(x1, y1, x1 + xx, y1 + yy, 4, c_white, c_white);
}
