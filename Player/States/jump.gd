extends State
class_name Jump

const JUMP_VELOCITY = 400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _ready():
	animation = "jump"


func check_relevance(input : InputPackage):
	if player_character.is_on_floor():
		input.actions.sort_custom(state_priority_sort)
		return input.actions[0]
	return "okay"


func update(input, delta):
	player_character.velocity.y += gravity * delta
	player_character.move_and_slide()


func on_enter_state():
	player_character.velocity.y -= JUMP_VELOCITY
