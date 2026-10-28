class_name MovementAction
extends Action

var offset: Vector2i

# _init is the reserved name for the class constructor
# every class has an implicit constructor that is always called, which "defines the default value of
# class variables" -- this gets run before _init, for each class that it inherits from, starting
# with the base class

# if the parent class has an explicit constructor that takes >0 arguments, an inheriting class needs 
# to call `super` and provide arguments (e.g. `super(arg1, arg2)`)
func _init(dx, dy) -> void:
	offset = Vector2i(dx, dy)
