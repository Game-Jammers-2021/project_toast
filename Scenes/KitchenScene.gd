extends Node2D

var cur_layers : int = 0
var layers = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


### EGG ###
func _on_EggArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.pressed:
		print("Egg clicked...")
		if cur_layers < 2:
			print("Egg added...")
			cur_layers += 1
			layers.append("Egg")
			# Do stuff...
			get_node("BGCanvasLayer/EggonToast").visible = true
			
		else:
			print("Fully layered")
		

func _on_EggArea_mouse_entered():
	print("Egg hovered...")
	get_node("BGCanvasLayer/EggHover").visible = true


func _on_EggArea_mouse_exited():
	print("Egg unhovered...")
	get_node("BGCanvasLayer/EggHover").visible = false
	

### AV ###
func _on_AvArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.pressed:
		print("Av clicked...")
		if cur_layers < 2:
			print("Av added...")
			cur_layers += 1
			layers.append("Av")
			# Do stuff...
			get_node("BGCanvasLayer/AvonToast").visible = true
			
		else:
			print("Fully layered")

func _on_AvArea_mouse_entered():
	print("Av hovered...")
	get_node("BGCanvasLayer/AvHover").visible = true


func _on_AvArea_mouse_exited():
	print("Av unhovered...")
	get_node("BGCanvasLayer/AvHover").visible = false


### BUTTER ###
func _on_ButterArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.pressed:
		print("Butter clicked...")
		if cur_layers < 2:
			print("Butter added...")
			cur_layers += 1
			layers.append("Butter")
			# Do stuff...
			get_node("BGCanvasLayer/ButteronToast").visible = true
		else:
			print("Fully layered")
		
func _on_ButterArea_mouse_entered():
	print("Butter hovered...")
	get_node("BGCanvasLayer/ButterHover").visible = true

func _on_ButterArea_mouse_exited():
	print("Butter unhovered...")
	get_node("BGCanvasLayer/ButterHover").visible = false


### JAM ###
func _on_JamArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.pressed:
		print("Jam clicked...")
		if cur_layers < 2:
			print("Jam added...")
			cur_layers += 1
			layers.append("Jam")
			# Do stuff...
			get_node("BGCanvasLayer/JamonToast").visible = true
		else:
			print("Fully layered")

func _on_JamArea_mouse_entered():
	print("Jam hovered...")
	get_node("BGCanvasLayer/JamHover").visible = true


func _on_JamArea_mouse_exited():
	print("Jam unhovered...")
	get_node("BGCanvasLayer/JamHover").visible = false


func _on_DoneButton_pressed():
	print("Done")
	
