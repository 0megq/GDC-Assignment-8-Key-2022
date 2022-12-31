extends Node2D

export var image_scene: PackedScene


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("draw"):
		create_sprite()
		
	if Input.is_action_pressed("erase"):
		delete_sprite()
	

# Creates the sprite
func create_sprite() -> void:
	var image: Area2D = image_scene.instance()
	add_child(image)
	
	image.position = get_viewport().get_mouse_position()

	
func delete_sprite() -> void:
	var children: Array = get_children()
	for child in children:
		if child.touching_mouse: # Touching mouse is a variable on each child
			child.queue_free()
