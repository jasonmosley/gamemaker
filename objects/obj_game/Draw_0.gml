switch(room){
	case rm_game:
		draw_text(20,20, "Score: " + string(score));
		draw_text(20,40, "Lives: " + string(lives));
		break;
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE SHIPS",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2, 200,
			@"Score 1,000 points to win!
			
			UP/DOWN: move
			LEFT/RIGHT: change direction
			SPACE: shoot
			
			>> PRESS ENTER TO START <<
			"
		)
		draw_set_halign(fa_left);
		break;
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_green;
		draw_text_transformed_color(
			room_width/2, 200, "YOU WIN!!!",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2, 300,
			">> PRESS ENTER TO START <<"
		)
		draw_set_halign(fa_left);
		break;
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2, 250,
			"FINAL SCORE: " + string(score)
		);
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
}