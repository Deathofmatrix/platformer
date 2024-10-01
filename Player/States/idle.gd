extends State
class_name Idle

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _ready():
	animation = "idle"


func check_relevance(input : InputPackage) -> String:
	input.actions.sort_custom(state_priority_sort)
	return input.actions[0]


func update(input : InputPackage, delta : float):
	player_character.velocity.y += gravity * delta
	player_character.move_and_slide()


func on_enter_state():
	player_character.velocity.x = 0


func on_exit_state():
	pass
