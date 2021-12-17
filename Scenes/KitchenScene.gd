extends Node2D

var cur_layers : int = 0
var layers = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in get_node("ToastOverlay").get_children():
		i.visible = false


### FOR ALL INGREDIENTS:
### - If left clicked: add to layer and show ingredient on toast (layer by layer)
### - If hovered: show hover state

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
			get_node("OnToastLayer/EggonToast").visible = true
			get_node("OnToastLayer/EggonToast").z_index = cur_layers
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
			get_node("OnToastLayer/AvonToast").visible = true
			get_node("OnToastLayer/AvonToast").z_index = cur_layers
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
			get_node("OnToastLayer/ButteronToast").visible = true
			get_node("OnToastLayer/ButteronToast").z_index = cur_layers
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
			get_node("OnToastLayer/JamonToast").visible = true
			get_node("OnToastLayer/JamonToast").z_index = cur_layers
		else:
			print("Fully layered")

func _on_JamArea_mouse_entered():
	print("Jam hovered...")
	get_node("BGCanvasLayer/JamHover").visible = true

func _on_JamArea_mouse_exited():
	print("Jam unhovered...")
	get_node("BGCanvasLayer/JamHover").visible = false


# When Done, check for which toast is made and 
# load the toast in the overlay.
func _on_DoneButton_pressed():
	if cur_layers != 0:
		print("Done")
		# Create new Image and texture
		var img = Image.new()
		var itex = ImageTexture.new()
		
		# Check for which toast is made
		if layers.has("Egg") and layers.has("Av"):
			img.load("res://Resources/toasts/egg + avo.png")
			Global.toasts_on_counter.append("EggAv")
		elif layers.has("Egg") and layers.has("Butter"):
			img.load("res://Resources/toasts/egg butter.png")
			Global.toasts_on_counter.append("EggButter")
		elif layers.has("Egg") and layers.has("Jam"):
			img.load("res://Resources/toasts/egg + jam 1.png")
			Global.toasts_on_counter.append("EggJam")
		elif layers.has("Av") and layers.has("Butter"):
			img.load("res://Resources/toasts/avocado + butter.png")
			Global.toasts_on_counter.append("AvButter")
		elif layers.has("Av") and layers.has("Jam"):
			img.load("res://Resources/toasts/avocado + jam.png")
			Global.toasts_on_counter.append("AvJam")
		elif layers.has("Butter") and layers.has("Jam"):
			img.load("res://Resources/toasts/jam + butter.png")
			Global.toasts_on_counter.append("JamButter")
		
		# Create texture with distinct image and call overlay
		itex.create_from_image(img)
		for i in get_node("ToastOverlay").get_children():
			i.visible = true
		get_node("ToastOverlay/toast").texture = itex


# When trash button is clicked, reset the layers
# and remove all ingredients on the toast
func _on_Trash_pressed():
	print("Trashing toast...")
	cur_layers = 0
	layers = []
	for i in get_node("OnToastLayer").get_children():
		i.visible = false


# Check x clicked for popup overlay
func _on_x_pressed():
	for i in get_node("ToastOverlay").get_children():
		i.visible = false
	for i in get_node("OnToastLayer").get_children():
		i.visible = false
	layers = []
	cur_layers = 0
	

# Change back to Backery
func _on_Ok_pressed():
	get_tree().change_scene("res://Scenes/InsideBackeryScene.tscn")
