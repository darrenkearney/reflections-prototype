extends Button

func _ready():
	pass

func _on_ReturnHomeButton_pressed():
	# get_tree().change_scene('res://home.tscn')
	get_node('../../../../../ConversationScreen').hide()
	get_node('../../../../../HomeScreen').show()
