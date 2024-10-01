extends Node
class_name PlayerModel

@onready var player_character = $".."
@onready var animator = $AnimationPlayer


var current_state : State

@onready var states = {
	"idle" : $Idle,
	"run" : $Run,
	"jump" : $Jump
}


func _ready():
	current_state = states["idle"]
	for state in states.values():
		state.player_character = player_character


func update(input : InputPackage, delta : float):
	var relevance = current_state.check_relevance(input)
	if relevance != "okay":
		switch_to(relevance)
	current_state.update(input, delta)
	print(current_state)


func switch_to(new_state : String):
	current_state.on_exit_state()
	current_state = states[new_state]
	current_state.on_enter_state()
	animator.play(current_state.animation)
