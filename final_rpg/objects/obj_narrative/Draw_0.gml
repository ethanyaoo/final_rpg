/// @description Insert description here
// You can write your code in this editor


if (global.inNarrative && !obj_manager.gameOver)
{
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_rectangle(0, 0, window_get_width(), window_get_height(), false);
	
	draw_set_font(pixelFont);

	draw_set_color(c_white);

	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	text = ds_map_find_value(textMap, value);

	if (text_length <= 0)
	{
		text_length = string_length(string(text));
	}

	if (index < text_length)
	{
		cooldown--;
	
		if (cooldown <= 0)
		{
			audio_play_sound(snd_textTyping, 10, false);
			index++;
			text_displayed = string_copy(text, 1, index);
			cooldown = text_speed;
		}
	}

	draw_text(x, y, text_displayed);
}

