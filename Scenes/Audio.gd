extends Node2D

var on: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	on = false

# If audio icon is pressed while 'on' is true, hide the slider
# else, show the slider.
func _on_Button_pressed():
	if on:
		get_node("VSlider").visible = false
		on = false
	else:
		get_node("VSlider").visible = true
		on = true
