class_name Action
# extends RefCounted means that this will be automatically freed when nothing references it
# the RefCounted class keeps track of how many reference there are to each instance 
# and will be automatically by the engine when the ref count becomes 0  
# NOTE: apparently in Godot 4, if you don't have an `extends` statement in your class at all
# it will automatically behave as if it had `extends RefCounted` so this line isn't needed anymore
# Contrast with things like Nodes, that have to be manually freed using Object.free
extends RefCounted
