extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
#	set_process(true)
	pass
	
func turnToLookAt(pos):
	var mpos = get_viewport().get_mouse_pos()
	
	look_at(mpos)
	
func fire():
	


