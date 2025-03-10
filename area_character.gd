extends Area2D

#@export allows us to set its value in the Inspector
@export var speed = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
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
		
	if velocity.length()>0: #if user inputs
		velocity = velocity.normalized()*speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	position += velocity*delta
	
	
	#animation flippinh
	if velocity.x !=0:
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.x < 0
