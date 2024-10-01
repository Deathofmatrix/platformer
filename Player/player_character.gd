extends CharacterBody2D

@onready var input_gatherer = $Input as InputGatherer
@onready var model = $Model as PlayerModel
#@onready var visuals = $Visuals as PlayerVisuals

func _physics_process(delta):
	var input:InputPackage = input_gatherer.gather_input()
	model.update(input, delta)
