# DialogBox.gd
extends RichTextLabel

var dialog = ["Oh hi! Hey, you're back.",
	"Well. What have you been at?",
	"Ye? Nice. It's good to hear you're doing alright.",
	"Cool. I'm pretty busy at the moment. See you later. "]
var message_id = 0

func _ready():
	set_bbcode(dialog[message_id])
	set_visible_characters(0)
	set_process_input(true)
	
func _input(event):
	if event.type == InputEvent.MOUSE_BUTTON && event.is_pressed():
		if get_visible_characters() >  get_total_character_count():
			if message_id < dialog.size()-1:
				message_id += 1
				set_bbcode(dialog[message_id])
				set_visible_characters(0)
		else:
			set_visible_characters(get_total_character_count())
			if message_id >= dialog.size()-1:
				get_node('ReturnHomeButton').show()

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
	
func _on_ConversationScreen_visibility_changed():
	if get_node('../../../../ConversationScreen').is_visible() == true:
		get_node('../Timer').start()
	else:
		get_node('../Timer').stop()