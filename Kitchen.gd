extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Ingredients to be used in toast
var ingredients = []


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_EggButton_pressed():
	ingredients.append('egg')

func _on_AvocadoButton_pressed():
	ingredients.append('avocado')

func _on_ButterButton_pressed():
	ingredients.append('butter')
	
func _on_JamButton_pressed():
	ingredients.append('jam')
