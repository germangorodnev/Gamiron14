///drawCircle(x, y, r, col, alp, step, angleBeg, angleSector)
var xx = argument[0],
    yy = argument[1],
    rr = argument[2],
    cc = argument[3],
    aa = argument[4],
    st = argument[5],
    ab = argument[6],
    as = argument[7];
draw_primitive_begin(pr_trianglefan);
draw_vertex_colour(xx, yy, cc, aa);
for (var i = ab; i <= as; i += st)
{
    draw_vertex_colour(xx + lengthdir_x(rr, i), 
        yy + lengthdir_y(rr, i), cc, aa);
}
draw_primitive_end();
