extends State
class_name Run

const SPEED = 300.0
const ACCELERATION = 1200.0
const JUMP_VELOCITY = -400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _ready():
	animation = "run"


func check_relevance(input : InputPackage):
	input.actions.sort_custom(state_priority_sort)
	if input.actions[0] == "run":
		return "okay"
	return input.actions[0]


func update(input : InputPackage, delta : float):
	player_character.velocity = velocity_by_input(input, delta)
	player_character.move_and_slide()


func velocity_by_input(input : InputPackage, delta : float) -> Vector2:
	var new_velocity = player_character.velocity
	
	var direction = input.input_direction.x
	new_velocity.x = move_toward(new_velocity.x, direction * SPEED, ACCELERATION * delta)
	
	if not player_character.is_on_floor():
		new_velocity.y += gravity * delta
	
	return new_velocity
