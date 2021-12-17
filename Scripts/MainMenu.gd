extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	#$"Start Button".grab_focus()
	pass


# When start button is pressed, changed scene to bakery
func _on_Start_Button_pressed():
	get_tree().change_scene("res://Scenes/InsideBackeryScene.tscn")


# When options button is pressed, show a popup window with different options
# (i.e volumn slider, etc...)
#func _on_Options_Button_pressed():
#	get_tree().change_scene("res://MainScene.tscn")


# When exit button is pressed, quit the game
func _on_Exit_Button_pressed():
	get_tree().quit()
