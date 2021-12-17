extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var on: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	#$"Start Button".grab_focus()
	on = false


func _on_AudioButton_pressed():
	if on:
		get_node("AudioButton/AudioSlider").visible = false
		on = false
	else:
		get_node("AudioButton/AudioSlider").visible = true
		on = true


func _on_AudioSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"),value)


func _on_ExitButton_pressed():
	get_tree().quit()



func _on_PlayAgain_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
