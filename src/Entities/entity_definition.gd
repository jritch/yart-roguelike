class_name EntityDefinition
# Resources are the common type in Godot for data containers (texture, script, mesh, etc.)
# loads data into memory off of the disk, which only happens once per Resource
# Resources can be set to save their data either as part of a scene or separately on disk
extends Resource

# add exports for properties
# these can then be assigned from the Inspector in the Editor

# export_category makes a new category for the export properties that follow
# they show up grouped by category in the Inspector
@export_category("Visuals")
@export var texture: AtlasTexture
@export_color_no_alpha var color: Color = Color.WHITE
