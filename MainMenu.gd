extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$"VBoxContainer/Start Button".grab_focus()


func _on_Start_Button_pressed():
	get_tree().change_scene("res://InsideBackeryScene.tscn")


#func _on_Options_Button_pressed():
#	get_tree().change_scene("res://MainScene.tscn")


func _on_Exit_Button_pressed():
	get_tree().quit()
