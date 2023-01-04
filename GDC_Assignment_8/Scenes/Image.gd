extends Area2D


var touching_mouse: bool


func _on_Sprite_mouse_entered() -> void:
	touching_mouse = true


func _on_Sprite_mouse_exited() -> void:
	touching_mouse = false


