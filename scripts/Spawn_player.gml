var x_in = 0;
var y_in = 0;

if global.free_roam {
    if global.x_out >= room_width { // Exited from right side
        x_in = 0;
        y_in = global.y_out;
    }
    else if global.x_out <= 0 { // Exited from left side
        x_in = room_width;
        y_in = global.y_out;
    }
    else if global.y_out <= 0 { // Exited from top
        x_in = global.x_out;
        y_in = room_height;
    }
    else if global.y_out >= room_height  { // Exited from bottom
        x_in = global.x_out;
        y_in = 0;
    }
    else {
        show_error("Failed to set entry position", true);
        exit;
    }  
}
else {
    x_in = 50;
    y_in = 430;
}

instance_create(x_in, y_in, ob_mockup_player);

