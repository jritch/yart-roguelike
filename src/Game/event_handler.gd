class_name EventHandler
# wow this one's actually a Node
extends Node

func get_action() -> Action:
	# null is the value that is automatically assigned to uninitialized Object-typed variables
	# (so, = null here is actually a bit redundant)
	# only untyped variables (which have the Variant type) and anything that inherits Object can be
	# assigned the value null, not basic built-in types like int, etc.

	var action: Action = null
	
	if Input.is_action_just_pressed("ui_up"):
		action = MovementAction.new(0,-1)
	if Input.is_action_just_pressed("ui_down"):
		action = MovementAction.new(0,1)
	if Input.is_action_just_pressed("ui_left"):
		action = MovementAction.new(-1,0)
	if Input.is_action_just_pressed("ui_right"):
		action = MovementAction.new(1,0)
	if Input.is_action_just_pressed("ui_cancel"):
		action = EscapeAction.new()
		
	return action
	
	
