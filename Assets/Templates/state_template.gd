extends State
class_name NewState
# Step 1: rename the class name

# Step 2: redefine the overridden parameters
func _ready():
	animation = "animation name here"


# Step 3: implement the check relevance function
func check_relevance(input : InputPackage) -> String:
	print_debug("error, implement the check_relevance() function")
	return "error, implement the check_relevance() function"

# Step 4: implemement update function
func update(input : InputPackage, delta : float):
	pass


#func on_enter_state():
	#pass
#
#
#func on_exit_state():
	#pass
