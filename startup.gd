extends Node

# class member variables go here, for example:
# var a = 2
var fullscreen = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var root = get_tree().get_root()
	#OS.set_window_fullscreen(true)
#	set_process_input(true)
	print("hello all")
	
func _input(event):
	#print(self.fullscreen)
	
	
	if (event.type == InputEvent.KEY ):
		if (event.scancode == KEY_ESCAPE && !event.is_pressed()):
			var viewportSize = self.get_parent().get_rect().size
			print(viewportSize)
			if (!OS.is_window_fullscreen()):
				print("Setting fullscreen")
				OS.set_window_fullscreen(true)
			else:
				print("should have reduced")
				OS.set_window_fullscreen(false)
	pass
	

