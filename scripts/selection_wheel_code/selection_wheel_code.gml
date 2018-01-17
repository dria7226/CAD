CAD.mode_pitch[CAD.mode] = Camera.pitch;
CAD.mode_yaw[CAD.mode] = Camera.yaw;
CAD.previous_mode = CAD.mode;
CAD.mode = 0;
Camera.pitch = CAD.mode_pitch[CAD.mode];
Camera.yaw = CAD.mode_yaw[CAD.mode];

add_timer("mode_switch", 30);

enabled = false;