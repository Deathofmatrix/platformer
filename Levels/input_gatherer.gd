extends Node
class_name InputGatherer

func gather_input() -> InputPackage:
	var new_input = InputPackage.new()
	
	new_input.input_direction.x = Input.get_axis("left", "right")
	if new_input.input_direction.x != 0:
		new_input.actions.append("run")
		if Input.is_action_just_pressed("sprint"):
			new_input.actions.append("sprint")
	
	if Input.is_action_just_pressed("jump"):
		new_input.actions.append("jump")
	
	if Input.is_action_just_pressed("dash"):
		new_input.actions.append("dash")
	
	if new_input.actions.is_empty():
		new_input.actions.append("idle")
	
	return new_input
