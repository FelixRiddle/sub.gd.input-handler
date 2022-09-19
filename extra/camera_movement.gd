var deadzone = .10

func camera_move_right(event=null,
		new_deadzone:float=self.deadzone) -> bool:
	
	if typeof(event) != null:
		if event is InputEventMouseMotion:
			if(event.speed.x > 0):
				return true
	
	# Right stick joy axis:
	# Horizontal: 2, Vertical: 3
	if(Input.get_joy_axis(0, JOY_AXIS_2) > new_deadzone):
		return true
	return false


func camera_move_left(event=null,
		new_deadzone:float=self.deadzone) -> bool:
	
	if typeof(event) != null:
		if event is InputEventMouseMotion:
			if(event.speed.x < 0):
				return true
	
	# Right stick joy axis:
	# Horizontal: 2, Vertical: 3
	if(Input.get_joy_axis(0, JOY_AXIS_2) < -new_deadzone):
		return true
	return false
