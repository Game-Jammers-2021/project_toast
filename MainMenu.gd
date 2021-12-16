extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"VBoxContainer/Start Button".grab_focus()


func _on_Start_Button_pressed():
	get_tree().change_scene("res://ToastyBoi.tscn")


#func _on_Options_Button_pressed():
#	get_tree().change_scene("res://MainScene.tscn")




func _on_Exit_Button_pressed():
	get_tree().quit()
