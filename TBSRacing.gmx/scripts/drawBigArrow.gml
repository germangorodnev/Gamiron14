///drawBigArrow(x1, y1, x2, y2, colInner, colOuter, alpha)
var x1 = argument[0],
    y1 = argument[1],
    x2 = argument[2],
    y2 = argument[3],
    colInner = argument[4],
    colOuter = argument[5],
    aa = argument[6],
    hfw = 16,
    hfw2 = hfw / 1.7,
    hfwA = hfw * 1.5,
    headH = 65,
    lw = 4;
var percent = (point_distance(x1, y1, x2, y2) / 200);
headH = clamp(headH * percent, 10, 65);
var dir = point_direction(x1, y1, x2, y2),
    dist = point_distance(x1, y1, x2, y2) - headH;

draw_primitive_begin(pr_trianglelist);

var vx1 = lengthdir_x(hfw, dir + 90), 
    vy1 = lengthdir_y(hfw, dir + 90);
var headX = x1 + lengthdir_x(dist, dir),
    headY = y1 + lengthdir_y(dist, dir),
    vx2 = lengthdir_x(hfw2, dir + 90), 
    vy2 = lengthdir_y(hfw2, dir + 90);
var vx3 = lengthdir_x(hfwA, dir + 90),
    vy3 = lengthdir_y(hfwA, dir + 90);
    
draw_vertex_colour(x1 + vx1, y1 + vy1, colInner, aa);
draw_vertex_colour(x1 - vx1, y1 - vy1, colInner, aa);
draw_vertex_colour(headX - vx2, 
    headY - vy2, colInner, aa);
    
// second
draw_vertex_colour(x1 + vx1, y1 + vy1, colInner, aa);
draw_vertex_colour(headX + vx2, 
    headY + vy2, colInner, aa);
draw_vertex_colour(headX - vx2, 
    headY - vy2, colInner, aa);

// third
draw_vertex_colour(headX + vx3, headY + vy3, colInner, aa);
var spikeX = headX + lengthdir_x(headH, dir),
    spikeY = headY + lengthdir_y(headH, dir);
draw_vertex_colour(spikeX, 
    spikeY, colInner, aa);
draw_vertex_colour(headX - vx3, headY - vy3, colInner, aa);
draw_primitive_end();

// outline
draw_line_width_colour(x1 - vx1, y1 - vy1, x1 + vx1, y1 + vy1, lw, colOuter, colOuter);
draw_line_width_colour(x1 + vx1, y1 + vy1, headX + vx2, headY + vy2, lw, colOuter, colOuter);
draw_line_width_colour(headX + vx2, headY + vy2, headX + vx3, headY + vy3, lw, colOuter, colOuter);
draw_line_width_colour(headX + vx3, headY + vy3, spikeX, spikeY, lw, colOuter, colOuter);
draw_line_width_colour(spikeX, spikeY, headX - vx3, headY - vy3, lw, colOuter, colOuter);
draw_line_width_colour(headX - vx3, headY - vy3, headX - vx2, headY - vy2, lw, colOuter, colOuter);
draw_line_width_colour(headX - vx2, headY - vy2, x1 - vx1, y1 - vy1, lw, colOuter, colOuter);

/*    
// top
draw_vertex_colour(headX + lengthdir_x(headH, dir), 
    headY + lengthdir_y(headH, dir), colInner, aa);
// right side
draw_vertex_colour(headX - vx3, 
    headY - vy3, colInner, aa);
draw_vertex_colour(headX - vx2, 
    headY - vy2, colInner, aa);
*/

