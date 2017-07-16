///drawCroppedRect(x1, y1, x2, y2, col, alpha, [percent = 3])
var x1 = argument[0],
    y1 = argument[1],
    x2 = argument[2],
    y2 = argument[3],
    col = argument[4],
    alpha = argument[5],
    percent = 3;
switch (argument_count)
{
case 7:
    percent = argument[6];
}
// determine the offset - 5% from width
var offX = ((x2 - x1) / 100) * percent,
    offY = offX;
draw_primitive_begin(pr_trianglefan);
draw_vertex_colour(x1 + offX, y1, col, alpha);
draw_vertex_colour(x2, y1, col, alpha);
draw_vertex_colour(x2, y2 - offY, col, alpha);
draw_vertex_colour(x2 - offX, y2, col, alpha);
draw_vertex_colour(x1, y2, col, alpha);
draw_vertex_colour(x1, y1 + offY, col, alpha);
draw_primitive_end();
