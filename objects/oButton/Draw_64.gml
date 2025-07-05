/// @description Insert description here
// You can write your code in this editor
draw_set_color(HoverColor)

draw_rectangle(x-Width, y-Height, x+Width,y+Height, false)

draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(x,y,String)


//revert draw
draw_set_color(-1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
