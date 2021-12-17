extends Node2D

var toasts_on_counter = Global.toasts_on_counter

# When entering scene, check for all toasts that should
# be on counter and show them
func _ready():
	for i in get_node("ToastsOnCounter").get_children():
		i.visible = false
	if toasts_on_counter.has("EggAv"):
		get_node("ToastsOnCounter/EggAvToast").visible = true
	if toasts_on_counter.has("EggJam"):
		get_node("ToastsOnCounter/EggJamToast").visible = true
	if toasts_on_counter.has("EggButter"):
		get_node("ToastsOnCounter/EggButterToast").visible = true
	if toasts_on_counter.has("AvButter"):
		get_node("ToastsOnCounter/AvButterToast").visible = true
	if toasts_on_counter.has("AvJam"):
		get_node("ToastsOnCounter/AvJamToast").visible = true
	if toasts_on_counter.has("JamButter"):
		get_node("ToastsOnCounter/JamButterToast").visible = true
