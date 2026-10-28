# the node (stored in the scene game.tscn, which is a tree of nodes) is a place to put all our stuff
# the script (game.gd)  defines behavior for the root node (Game) in game.tscn
extends Node2D 
# Node2D inherits CanvasItem -> Node -> Object 
# CanvasItem is the base 2D class, which draws to screen
# Node gives you the scene tree hierarchy
# Object is the base class for ~everything in the Engine, gives you allocate and free, signals, etc.

# start player at 0,0
var player_grid_pos := Vector2i.ZERO

# @onready is an annotation that defers initialization of a member variable
# until right before _ready() is called -- because sub-nodes can only be obtained once this is called  
# _ready() is called once this node and its children have been added to the scene (children first, then parents)
@onready
var player: Sprite2D = $Player

@onready
var event_handler: EventHandler = $EventHandler

# _process is a virtual method that gets executed by the engine every frame
# so this is where our game loop code will go
func _process(delta: float) -> void:
	var action: Action = event_handler.get_action()
	
	if action is MovementAction:
		player_grid_pos += action.offset
		player.position = Grid.grid_to_world(player_grid_pos)
	elif action is EscapeAction:
		# get_tree is a method from Node that returns the SceneTree that contains this node.
		# SceneTree is the default MainLoop, so SceneTree is the actual game loop implementation
		# if there isn't a MainLoop provided to the OS the application will exit
		# by default, a SceneTree will be created and provided to the OS
		# SceneTree is effectively a singleton, and the root node is always t1he application window
		# the SceneTree's quit() method will quit the application
		get_tree().quit()
	
