/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 23861C38
/// @DnDArgument : "code" "//create event$(13_10)/// @description Insert description here$(13_10)$(13_10)#macro MAIN		0$(13_10)#macro SETTINGS 1$(13_10)#macro TOTAL	2$(13_10)$(13_10)global.dsm_settings = ds_map_create();$(13_10)#macro set		 global.dsm_settings$(13_10)$(13_10)ds_map_add(set, "sound", [5, [0,10]]); //5 is the default sound, 0: min, 10: max$(13_10)ds_map_add(set, "music", [5, [0,10]]);$(13_10)ds_map_add(set, "diff_level", [0, ["Easy", "Medium", "Hard"]]); //the current index is 0 which is easy$(13_10)//main menu$(13_10)menu[MAIN,0] = "Start";$(13_10)menu[MAIN,1] = "Settings";$(13_10)menu[MAIN,2] = "Quit";$(13_10)$(13_10)// submenu 01$(13_10)menu[SETTINGS,0] = [" Sound ", "sound"];$(13_10)menu[SETTINGS,1] = [" Music ", "music"];$(13_10)menu[SETTINGS,2] = [" Difficulty ", "diff_level"];$(13_10)menu[SETTINGS,3] = "Back";$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)index = 0; //menu index position$(13_10)sub_menu = 0;$(13_10)$(13_10)//menu position$(13_10)menu_x_pos = room_width * .5; $(13_10)menu_y_pos = room_height * .4;$(13_10)click_area_w = 35; //area width$(13_10)$(13_10)function button(_y, _wl, _wr, _h) constructor $(13_10){$(13_10)	y = _y;		//position y$(13_10)	wl = _wl;	//click area width left$(13_10)	wr = _wr;	//click area width right$(13_10)	h = _h;		//click area height$(13_10)$(13_10)}$(13_10)//initialize a button$(13_10)var _h = 40;$(13_10)for (var a = 0; a < TOTAL; ++a) $(13_10){$(13_10)	for (var b = 0; b < array_length(menu[a]); ++b) $(13_10)	{$(13_10)	    button_arr[a][b] = new button(0, room_width/2, room_width/2, _h);$(13_10)	}$(13_10)$(13_10)    // code here$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)	$(13_10)$(13_10)"
//create event
/// @description Insert description here

#macro MAIN		0
#macro SETTINGS 1
#macro TOTAL	2

global.dsm_settings = ds_map_create();
#macro set		 global.dsm_settings

ds_map_add(set, "sound", [5, [0,10]]); //5 is the default sound, 0: min, 10: max
ds_map_add(set, "music", [5, [0,10]]);
ds_map_add(set, "diff_level", [0, ["Easy", "Medium", "Hard"]]); //the current index is 0 which is easy
//main menu
menu[MAIN,0] = "Start";
menu[MAIN,1] = "Settings";
menu[MAIN,2] = "Quit";

// submenu 01
menu[SETTINGS,0] = [" Sound ", "sound"];
menu[SETTINGS,1] = [" Music ", "music"];
menu[SETTINGS,2] = [" Difficulty ", "diff_level"];
menu[SETTINGS,3] = "Back";




index = 0; //menu index position
sub_menu = 0;

//menu position
menu_x_pos = room_width * .5; 
menu_y_pos = room_height * .4;
click_area_w = 35; //area width

function button(_y, _wl, _wr, _h) constructor 
{
	y = _y;		//position y
	wl = _wl;	//click area width left
	wr = _wr;	//click area width right
	h = _h;		//click area height

}
//initialize a button
var _h = 40;
for (var a = 0; a < TOTAL; ++a) 
{
	for (var b = 0; b < array_length(menu[a]); ++b) 
	{
	    button_arr[a][b] = new button(0, room_width/2, room_width/2, _h);
	}

    // code here
}