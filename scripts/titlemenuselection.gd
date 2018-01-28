extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _on_play_pressed():
	# get_tree().change_scene('res://home.tscn')
	# Transition.fade_to('res://home.tscn')
	get_parent().hide()
	get_node('../../HomeScreen').show()

func _on_credits_pressed():
	var credits = get_parent().get_node('CreditsPanel')
	if credits.is_hidden():
		credits.show()
	else:
		credits.hide()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("PlayButton").connect("pressed",self,"_on_play_pressed")
	get_node("CreditsButton").connect("pressed",self,"_on_credits_pressed")
