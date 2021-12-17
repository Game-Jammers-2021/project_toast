extends Area2D

# Connected to DoorCollisionBody. When left mouse button is clicked
# in this collision area, change the scene to KitchenScene.
func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.pressed:
		print("Clicked on door. Changing scene...")
		get_tree().change_scene("res://Scenes/KitchenScene.tscn")


# When door area is hovered, highlight it
func _on_DoorArea_mouse_entered():
	get_node("../BGCanvasLayer/DoorHighlight").visible = true
	print('Door hovered...')


# On exit hover, hide highlight
func _on_DoorArea_mouse_exited():
	get_node("../BGCanvasLayer/DoorHighlight").visible = false
	print('Door unhovered...')
