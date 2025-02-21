extends Sprite2D

var speed = 500
var angular_speed = PI

#function called when the scene first loads
func _ready(): 
	pass
	#var timer = get_node("Timer")
	#timer.timeout.connect(_on_timer_timeout)
#function to make the sprite spin

#func _process(delta):
	#rotation += angular_speed *delta
	#var velocity =Vector2.UP.rotated(rotation) * speed
	#position += velocity*delta
	
	#var direction = 0
	#if Input.is_action_just_pressed("ui_left"):
		#direction = -1
	#if Input.is_action_just_pressed("ui_right"):
		#direction = 1
	#rotation += angular_speed*direction*delta
		
		
	#2D vector to represent direction and speed 
		#Vector2.UP is a Vector2 class constant -- a vector pointing up
		#we then call the function rotate and multiply by speed
	#var velocity = Vector2.UP.rotated(rotation) * speed
		#added to move it. the position is of type Vector2
	#position +=velocity*delta

#function called every fram

func _process(delta):
	#moVing with user input
	
	var velocity = Vector2.ZERO #start with velocity at 0
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation)*speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN.rotated(rotation)*speed
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT.rotated(rotation)*speed
	if Input.is_action_pressed("ui_right"):
		velocity = Vector2.RIGHT.rotated(rotation)*speed
	position += velocity*delta


#BUTTON 

#func _on_button_pressed():
	#set_process(not is_processing())
	
	#to connect a signal via code we need to call the
	#connect() method. We can do that using Node.-ready()

#func _on_timer_timeout():
	#visible = not visible
