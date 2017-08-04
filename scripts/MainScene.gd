extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process_input(true)
#	set_process(true)
	
#func createDude(event):
	#var scene = load("res://scenes/Hero.tscn") # will load when the script is instanced
	#dude = scene.instance()
	
	#dude.set_pos(event.pos)
	#add_child(dude)


# var time_elapsed = 0
#		dude.set_rotd()
	
	
	
	
func _input(event):
	var leftClicked = (event.type == InputEvent.MOUSE_BUTTON and event.pressed == true and event.button_index == BUTTON_LEFT)
	var rightClicked = (event.type == InputEvent.MOUSE_BUTTON and event.pressed == true and event.button_index == BUTTON_RIGHT)
	var dude = get_node("hero")
	
	if (event.type == InputEvent.SCREEN_TOUCH or leftClicked):
		var sampleGhost = get_node("sampleGhost")
		
		var angle = dude.get_angle_to(event.pos)
		print("pos of mouse: " + str(event.pos))
		
		var anglewithangletopos = dude.get_pos().angle_to_point( event.pos )
		print("anglewith get_angle_to: " + str(angle))
		print("anglewithangletoposle: " + str(anglewithangletopos))
		#dude.set_rot( dude.get_pos().angle_to_point( event.pos ) )
		dude.look_at( event.pos )
	
	if (rightClicked):
		dude.set_rot(0)
	
		# createDude(event)
		
#	 if (event.type == InputEvent.SCREEN_TOUCH):
#		createDude(event)

