key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
mouse_click = mouse_check_button(mb_left);
var move = key_down - key_up;

vsp = move * fly_spd;
///direction of plane
if(place_meeting(x, y + vsp, Wall)) vsp = 0;

///create bullet

if(mouse_click && cooldown < 1)
{
	blt = instance_create_layer(x + 3, y + 10, "Bullet_Layer", obj_bullet);
	cooldown = 12;
}

cooldown -= 1;
y = y + vsp;