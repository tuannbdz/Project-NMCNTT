/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5ED8594E
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_font(fnt_menu);$(13_10)$(13_10)//line spacing$(13_10)var _gap = 40;$(13_10)$(13_10)//draw lines$(13_10)var _size = array_length(menu[sub_menu]);$(13_10)for (var i = 0; i < _size; ++i) {$(13_10)	//reset color$(13_10)	if i == index var _col = c_blue; $(13_10)	else var _col = c_white;$(13_10)	$(13_10)	if is_array(menu[sub_menu][i])$(13_10)	{$(13_10)		//store menu array$(13_10)		var _menu_arr = menu[sub_menu][i];$(13_10)		$(13_10)		//get the map array$(13_10)		var _map_arr = set[? _menu_arr[1]];$(13_10)		$(13_10)		//get limit array$(13_10)		var _limits_arr = _map_arr[1];$(13_10)		$(13_10)		//integer or text?$(13_10)		var _str1 = _menu_arr[0];$(13_10)		if is_real(_limits_arr[0])$(13_10)		{$(13_10)			var _str2 = string(_map_arr[0]); //get index of menu and map array$(13_10)			$(13_10)		}$(13_10)		else //show text of difficulty$(13_10)		{$(13_10)			var _str2 = _limits_arr[_map_arr[0]];$(13_10)		}$(13_10)	}$(13_10)	else $(13_10)	{$(13_10)		//draw string$(13_10)		var _str1 = menu[sub_menu][i];$(13_10)		var _str2 = "";$(13_10)	}$(13_10)    //set up y position and text width$(13_10)	//1: get struct $(13_10)	var _stc = button_arr[sub_menu][i]; //stc = struct$(13_10)	_stc.y = menu_y_pos + _gap * i;$(13_10)	$(13_10)	//set different width$(13_10)	if _str2 == ""$(13_10)	{$(13_10)		_stc.wl = string_width(_str1)/2;$(13_10)		_stc.wr = string_width(_str1)/2;$(13_10)	} $(13_10)	else $(13_10)	{$(13_10)		_stc.wl = string_width(_str1 + " ");$(13_10)		_stc.wr = string_width(_str2 + " ");$(13_10)	}$(13_10)	$(13_10)	//check if mouse hovers over menu entry$(13_10)	var _hovering_over_text = false;$(13_10)	//mouse control menu$(13_10)	if mouse_y >= menu_y_pos and mouse_y <= menu_y_pos + _gap * _size$(13_10)	{$(13_10)		//check menu entry$(13_10)		if mouse_y > _stc.y and mouse_y < _stc.y + _stc.h $(13_10)		{$(13_10)			//check x position$(13_10)			if mouse_x > menu_x_pos - _stc.wl and mouse_x < menu_x_pos + _stc.wr$(13_10)			{$(13_10)					_col = c_blue;$(13_10)					_hovering_over_text = true;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	//highlight current index$(13_10)	if index == i _col = c_blue;$(13_10)	$(13_10)	//update index with mouse pos $(13_10)	if _col = c_blue$(13_10)	{$(13_10)		//update index $(13_10)		index = i;$(13_10)		//check if user clicks this entry$(13_10)		if mouse_check_button_pressed(mb_left) and _hovering_over_text$(13_10)		{$(13_10)			//set menu select to true$(13_10)			var _select = true;$(13_10)			var _hmove = 0;$(13_10)			//allow movement$(13_10)			if is_array(menu[sub_menu][i])$(13_10)			{$(13_10)				//increment array$(13_10)				if mouse_x < menu_x_pos - _stc.wl + click_area_w  _hmove = -1; //click on edge$(13_10)				else if mouse_x > menu_x_pos - click_area_w and mouse_x < menu_x_pos	var _hmove = 1;$(13_10)			}$(13_10)			process_menu(_select, _hmove);$(13_10)			$(13_10)			//update size in submenu$(13_10)			_size = array_length(menu[sub_menu]);$(13_10)		}$(13_10)	}$(13_10)	//draw text$(13_10)	if _str2 == ""$(13_10)	{$(13_10)		//simple entry$(13_10)		draw_set_halign(fa_center);$(13_10)		draw_text_color(menu_x_pos, menu_y_pos + _gap * i, _str1 + " ", _col, _col, _col, _col, 1);$(13_10)	} else$(13_10)	{$(13_10)		//array entry$(13_10)		draw_set_halign(fa_right);$(13_10)		draw_text_color(menu_x_pos, menu_y_pos + _gap * i, _str1 + " ", _col, _col, _col, _col, 1);$(13_10)		draw_set_halign(fa_left);$(13_10)		draw_text_color(menu_x_pos, menu_y_pos + _gap * i, _str2, _col, _col, _col, _col, 1);$(13_10)	}$(13_10)}$(13_10)$(13_10)"
/// @description Insert description here
draw_set_halign(fa_left);
draw_set_font(fnt_menu);

//line spacing
var _gap = 40;

//draw lines
var _size = array_length(menu[sub_menu]);
for (var i = 0; i < _size; ++i) {
	//reset color
	if i == index var _col = c_blue; 
	else var _col = c_white;
	
	if is_array(menu[sub_menu][i])
	{
		//store menu array
		var _menu_arr = menu[sub_menu][i];
		
		//get the map array
		var _map_arr = set[? _menu_arr[1]];
		
		//get limit array
		var _limits_arr = _map_arr[1];
		
		//integer or text?
		var _str1 = _menu_arr[0];
		if is_real(_limits_arr[0])
		{
			var _str2 = string(_map_arr[0]); //get index of menu and map array
			
		}
		else //show text of difficulty
		{
			var _str2 = _limits_arr[_map_arr[0]];
		}
	}
	else 
	{
		//draw string
		var _str1 = menu[sub_menu][i];
		var _str2 = "";
	}
    //set up y position and text width
	//1: get struct 
	var _stc = button_arr[sub_menu][i]; //stc = struct
	_stc.y = menu_y_pos + _gap * i;
	
	//set different width
	if _str2 == ""
	{
		_stc.wl = string_width(_str1)/2;
		_stc.wr = string_width(_str1)/2;
	} 
	else 
	{
		_stc.wl = string_width(_str1 + " ");
		_stc.wr = string_width(_str2 + " ");
	}
	
	//check if mouse hovers over menu entry
	var _hovering_over_text = false;
	//mouse control menu
	if mouse_y >= menu_y_pos and mouse_y <= menu_y_pos + _gap * _size
	{
		//check menu entry
		if mouse_y > _stc.y and mouse_y < _stc.y + _stc.h 
		{
			//check x position
			if mouse_x > menu_x_pos - _stc.wl and mouse_x < menu_x_pos + _stc.wr
			{
					_col = c_blue;
					_hovering_over_text = true;
			}
		}
	}
	//highlight current index
	if index == i _col = c_blue;
	
	//update index with mouse pos 
	if _col = c_blue
	{
		//update index 
		index = i;
		//check if user clicks this entry
		if mouse_check_button_pressed(mb_left) and _hovering_over_text
		{
			//set menu select to true
			var _select = true;
			var _hmove = 0;
			//allow movement
			if is_array(menu[sub_menu][i])
			{
				//increment array
				if mouse_x < menu_x_pos - _stc.wl + click_area_w  _hmove = -1; //click on edge
				else if mouse_x > menu_x_pos - click_area_w and mouse_x < menu_x_pos	var _hmove = 1;
			}
			process_menu(_select, _hmove);
			
			//update size in submenu
			_size = array_length(menu[sub_menu]);
		}
	}
	//draw text
	if _str2 == ""
	{
		//simple entry
		draw_set_halign(fa_center);
		draw_text_color(menu_x_pos, menu_y_pos + _gap * i, _str1 + " ", _col, _col, _col, _col, 1);
	} else
	{
		//array entry
		draw_set_halign(fa_right);
		draw_text_color(menu_x_pos, menu_y_pos + _gap * i, _str1 + " ", _col, _col, _col, _col, 1);
		draw_set_halign(fa_left);
		draw_text_color(menu_x_pos, menu_y_pos + _gap * i, _str2, _col, _col, _col, _col, 1);
	}
}