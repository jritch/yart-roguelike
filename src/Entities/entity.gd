class_name Entity
extends Sprite2D

# this is the getter/setter syntax
# add a code block after a variable declaration, then
# what's in that code block gets executed when it gets get or set
# so, setter runs when you do entity.grid_position = val 
# or entity.set("grid_position", val) or grid_position = val elsewhere in this script's scope
# this is the close to the same syntax for getters/setters as is used in C# and Kotlin
var grid_position: Vector2i:
	set(value):
		grid_position = value
		position = Grid.grid_to_world(grid_position)

# constructor
func _init(start_position: Vector2i, entity_definition: EntityDefinition) -> void:
	# this is an attribute from Sprite2D (set position to mean top left, not center)
	centered = false 
	#position is the Sprite2D attribute, so this passes through the setter to that
	grid_position = start_position 
	# these are also properties of the sprite
	texture = entity_definition.texture
	# this may need some changes since I'm using colored sprites
	modulate = entity_definition.color
	
func move(move_offset: Vector2i) -> void:
	grid_position += move_offset
	
	
