# in GDscript by default all script files are *unnamed classes*
# class_name is a keyword that registers our new class (Grid) as a new type in Godot's editor
# becaused named classes are globally registered, we can use them in any script without 
# needing to load the script they are defined in
class_name Grid
extends Object

# Vector2i -> 2D integer Vector
const tile_size = Vector2i(16,16)

# static and const do the ~same things as in c++
# static (variable) -> stored in memory once, as part of the class, doesn't need an instance
# static (function) -> has no access to instance member variables or self
# const -> can't be changed after initialization, must be set at compile time

# func keyword defines a function in Godot
# functions in Godot always belong to a class
# so, libraries of helper functions in Godot are defined as classes with static functions
static func grid_to_world(grid_pos: Vector2i) -> Vector2i:
	# note, here we're using = for assignment, in the previous script we saw := was used
	# a = b assigns the value of b to a
	# a := b does this, but also infers the type of a based on the value of b
	# so not necessary here because we put the type annotation
	var world_pos: Vector2i = grid_pos * tile_size
	return world_pos
	
static func world_to_grid(world_pos: Vector2i) -> Vector2i:
	var grid_pos: Vector2i = world_pos / tile_size
	return grid_pos
	
