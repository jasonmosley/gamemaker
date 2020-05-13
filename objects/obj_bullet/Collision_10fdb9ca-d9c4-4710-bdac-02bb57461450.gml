score += 10;

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == sp_rock_large || sprite_index == sp_rock_fire) {
		repeat(10) {
			instance_create_layer(x,y, "Instances", obj_dirt);
		}
		repeat(2){
			var new_rock = instance_create_layer(x,y, "Instances", obj_rock);
			new_rock.sprite_index = sp_rock_med;
		}
	} else if (sprite_index == sp_rock_med) {
		repeat(10) {
			instance_create_layer(x,y, "Instances", obj_dirt);
		}
		repeat(3){
			var new_rock = instance_create_layer(x,y, "Instances", obj_rock);
			new_rock.sprite_index = sp_rock_small;
		}
	} else {
		repeat(10) {
			instance_create_layer(x,y, "Instances", obj_dirt);
		}
	}
}
