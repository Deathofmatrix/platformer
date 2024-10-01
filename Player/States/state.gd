extends Node
class_name State

var player_character : CharacterBody2D

var animation : String

static var state_priority : Dictionary = {
	"idle" : 1,
	"run" : 2,
	"sprint" : 3,
	"dash" : 5,
	"jump" : 10
}


static func state_priority_sort(a : String, b : String):
	if state_priority[a] > state_priority[b]:
		return true
	else:
		return false


func check_relevance(input : InputPackage) -> String:
	print_debug("error, implement the check_relevance() function")
	return "error, implement the check_relevance() function"


func update(input : InputPackage, delta : float):
	pass


func on_enter_state():
	pass


func on_exit_state():
	pass
