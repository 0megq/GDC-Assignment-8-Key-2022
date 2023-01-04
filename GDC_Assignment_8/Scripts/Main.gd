extends Node2D

export var image_scene: PackedScene


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("draw"):
		create_image()
		
	if Input.is_action_pressed("erase"):
		delete_image()
	

# Creates the image
func create_image() -> void:
	var image: Area2D = image_scene.instance()
	add_child(image)
	
	image.position = get_viewport().get_mouse_position()

	
func delete_image() -> void:
	var children: Array = get_children() # Children
	for child in children:
		if child.touching_mouse: # Touching mouse is a variable on each child
			child.queue_free() # Deletes the node



