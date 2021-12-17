extends Area2D

# Connected to DoorCollisionBody. When left mouse button is clicked
# in this collision area, change the scene to KitchenScene.
func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.pressed:
		get_tree().change_scene("res://Scenes/KitchenScene.tscn")
