# HomeViewConversationLinks.gd
extends Sprite

func _ready():
	get_node("LinkButtonTest").connect("pressed",self,"_on_LinkButtonTest_pressed")

func _on_LinkButtonTest_pressed():
	#get_tree().change_scene("res://ConversationScreen.tscn")
	get_parent().hide()
	get_node('../../ConversationScreen').show()
