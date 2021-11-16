/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F333D0C
/// @DnDArgument : "code" "//create step$(13_10)/// @description Insert description here$(13_10)global.pause = true; //pause game and open menu$(13_10)$(13_10)//get input$(13_10)$(13_10)var _up = keyboard_check_pressed(vk_up);$(13_10)var _down = keyboard_check_pressed(vk_down);$(13_10)var _left = keyboard_check_pressed(vk_left);$(13_10)var _right = keyboard_check_pressed(vk_right);$(13_10)var _select = keyboard_check_pressed(vk_enter);$(13_10)$(13_10)var _move = _down - _up; //pressed: 1, not pressed: 0$(13_10)var _hmove = _right - _left;$(13_10)$(13_10)if _move != 0$(13_10){$(13_10)	//move the index$(13_10)	index += _move;$(13_10)	//clamp value$(13_10)	var _size = array_length_2d(menu, sub_menu); //1 dimensional array$(13_10)	if index < 0 index = _size - 1; //at start, loop till end$(13_10)	else if index >= _size index = 0; //at end, loop till start$(13_10)}$(13_10)function process_menu(_select, _hmove)$(13_10){$(13_10)	if _select or (is_array(menu[sub_menu][index]) and (_hmove != 0))$(13_10)	{$(13_10)		switch(sub_menu)$(13_10)		{$(13_10)			case MAIN:$(13_10)				switch(index) $(13_10)				{$(13_10)					case 0:$(13_10)						room_goto_next();$(13_10)					break;$(13_10)					case 1:$(13_10)						//settings$(13_10)						sub_menu = SETTINGS;$(13_10)						index = 0;$(13_10)					break;$(13_10)					case 2:$(13_10)					game_end();$(13_10)					break;$(13_10)$(13_10)				}$(13_10)				break;$(13_10)			case SETTINGS: $(13_10)				switch(index) $(13_10)				{$(13_10)					case 0:$(13_10)						//sound$(13_10)						change_menu(_hmove, "sound");$(13_10)					break;$(13_10)					case 1:$(13_10)						//music$(13_10)						change_menu(_hmove, "music");$(13_10)					break;$(13_10)					case 2:$(13_10)						//difficulty$(13_10)						change_menu(_hmove, "diff_level");$(13_10)					break;$(13_10)					case 3:$(13_10)						//back$(13_10)						sub_menu = MAIN;$(13_10)						index = 1;$(13_10)					break;$(13_10)$(13_10)				}$(13_10)			break;$(13_10)		}$(13_10)	} $(13_10)}$(13_10)$(13_10)process_menu(_select, _hmove);$(13_10)function change_menu(_move, _key)$(13_10){$(13_10)		//get map array$(13_10)		var _map_arr = set[? _key];$(13_10)		//get limit array$(13_10)		var _limits_arr = _map_arr[1];$(13_10)$(13_10)		//check if the first entry in the limit is an integer$(13_10)		if is_real(_limits_arr[0])$(13_10)		{$(13_10)			//limits are 0 and 1$(13_10)			var _min = _limits_arr[0];$(13_10)			var _max = _limits_arr[1];$(13_10)		} $(13_10)		else $(13_10)		{$(13_10)			//string entries: $(13_10)			var _min = 0;$(13_10)			var _max = array_length(_limits_arr) - 1;$(13_10)		}$(13_10)$(13_10)		//move and store the selection$(13_10)		_map_arr[@ 0] = clamp(_move + _map_arr[0], _min, _max); //@ to pass by reference$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)//create and hide arrows$(13_10)var lay_arrow1_1 = layer_get_id("left_arrow001_1");$(13_10)var lay_arrow1 = layer_get_id("left_arrow001");$(13_10)var lay_arrow2_1 = layer_get_id("left_arrow002_1");$(13_10)var lay_arrow2 = layer_get_id("left_arrow002");$(13_10)var lay_arrow3_1 = layer_get_id("left_arrow003_1");$(13_10)var lay_arrow3 = layer_get_id("left_arrow003");$(13_10)repeat (100)$(13_10){$(13_10)    switch (sub_menu)$(13_10)	{$(13_10)		case  MAIN:  $(13_10)			layer_set_visible(lay_arrow1_1,false);$(13_10)			layer_set_visible(lay_arrow1,false);$(13_10)			layer_set_visible(lay_arrow2_1,false);$(13_10)			layer_set_visible(lay_arrow2,false);$(13_10)			layer_set_visible(lay_arrow3_1,false);$(13_10)			layer_set_visible(lay_arrow3,false);$(13_10)		break;$(13_10)		case SETTINGS:$(13_10)			layer_set_visible(lay_arrow1_1,true);$(13_10)			layer_set_visible(lay_arrow1,  true);$(13_10)			layer_set_visible(lay_arrow2_1,true);$(13_10)			layer_set_visible(lay_arrow2,  true);$(13_10)			layer_set_visible(lay_arrow3_1,true);$(13_10)			layer_set_visible(lay_arrow3,  true);$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)	$(13_10)"
//create step
/// @description Insert description here
global.pause = true; //pause game and open menu

//get input

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);
var _select = keyboard_check_pressed(vk_enter);

var _move = _down - _up; //pressed: 1, not pressed: 0
var _hmove = _right - _left;

if _move != 0
{
	//move the index
	index += _move;
	//clamp value
	var _size = array_length_2d(menu, sub_menu); //1 dimensional array
	if index < 0 index = _size - 1; //at start, loop till end
	else if index >= _size index = 0; //at end, loop till start
}
function process_menu(_select, _hmove)
{
	if _select or (is_array(menu[sub_menu][index]) and (_hmove != 0))
	{
		switch(sub_menu)
		{
			case MAIN:
				switch(index) 
				{
					case 0:
						room_goto_next();
					break;
					case 1:
						//settings
						sub_menu = SETTINGS;
						index = 0;
					break;
					case 2:
					game_end();
					break;

				}
				break;
			case SETTINGS: 
				switch(index) 
				{
					case 0:
						//sound
						change_menu(_hmove, "sound");
					break;
					case 1:
						//music
						change_menu(_hmove, "music");
					break;
					case 2:
						//difficulty
						change_menu(_hmove, "diff_level");
					break;
					case 3:
						//back
						sub_menu = MAIN;
						index = 1;
					break;

				}
			break;
		}
	} 
}

process_menu(_select, _hmove);
function change_menu(_move, _key)
{
		//get map array
		var _map_arr = set[? _key];
		//get limit array
		var _limits_arr = _map_arr[1];

		//check if the first entry in the limit is an integer
		if is_real(_limits_arr[0])
		{
			//limits are 0 and 1
			var _min = _limits_arr[0];
			var _max = _limits_arr[1];
		} 
		else 
		{
			//string entries: 
			var _min = 0;
			var _max = array_length(_limits_arr) - 1;
		}

		//move and store the selection
		_map_arr[@ 0] = clamp(_move + _map_arr[0], _min, _max); //@ to pass by reference


}

//create and hide arrows
var lay_arrow1_1 = layer_get_id("left_arrow001_1");
var lay_arrow1 = layer_get_id("left_arrow001");
var lay_arrow2_1 = layer_get_id("left_arrow002_1");
var lay_arrow2 = layer_get_id("left_arrow002");
var lay_arrow3_1 = layer_get_id("left_arrow003_1");
var lay_arrow3 = layer_get_id("left_arrow003");
repeat (100)
{
    switch (sub_menu)
	{
		case  MAIN:  
			layer_set_visible(lay_arrow1_1,false);
			layer_set_visible(lay_arrow1,false);
			layer_set_visible(lay_arrow2_1,false);
			layer_set_visible(lay_arrow2,false);
			layer_set_visible(lay_arrow3_1,false);
			layer_set_visible(lay_arrow3,false);
		break;
		case SETTINGS:
			layer_set_visible(lay_arrow1_1,true);
			layer_set_visible(lay_arrow1,  true);
			layer_set_visible(lay_arrow2_1,true);
			layer_set_visible(lay_arrow2,  true);
			layer_set_visible(lay_arrow3_1,true);
			layer_set_visible(lay_arrow3,  true);
		break;
	}
}