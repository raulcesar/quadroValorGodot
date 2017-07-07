extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var viewportSize
var moving = false

func _ready():
	viewportSize = self.get_parent().get_rect().size
	var middleOfScene = Vector2(viewportSize.width/2, viewportSize.height/2)
	self.set_pos(middleOfScene)
	self.set_process(true)
	self.set_process_input(true)
	# self.set_rot(deg2rad(45))
	# self.set_scale(Vector2(2, 2))
func move(delta): 
	var mySize = self.get_item_rect().size
	var curPos = self.get_pos()
	curPos.x += 100 * delta
	if (curPos.x  > viewportSize.width + mySize.width / 2):
		curPos.x = 0 - mySize.width /2
	self.set_pos(curPos)

func _input(event):
	if (event.type == InputEvent.SCREEN_TOUCH || event.type == InputEvent.MOUSE_BUTTON):
		print(str("SCREEN_TOUCH"))
		self.moving = !self.moving
	
	
func _process(delta):
	if (Input.is_key_pressed(KEY_ESCAPE)):
		self.get_tree().quit()

	if (Input.is_key_pressed(KEY_LEFT)):
		self.moving = false
		print(str("moving: ", self.moving))
		
	if (Input.is_key_pressed(KEY_RIGHT)):
		self.moving = true
		print(str("moving: ", self.moving))
		
	if (self.moving):
		self.move(delta)
		
		
	
	
	
	
	
# func _draw():
	# self.draw_rect(self.get_item_rect(), Color(0, 0, 1, 0.2))
	
	