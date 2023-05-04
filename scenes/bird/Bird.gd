extends KinematicBody2D

var gravity = 300 #--Gravedad
var jump = 50 #--Fuerza del Salto

var up = Vector2.UP #--Arriba
var motion = Vector2.ZERO #--Velocidad

func _ready():
	pass

func _physics_process(delta):
	
	motion.y+=gravity*delta #--Aplicar la Gravedad
	
	if Input.is_action_just_pressed("JUMP"):
		motion.y=-jump
		$AudioStreamPlayer.play()
	
	rotation_degrees += clamp(motion.y,-15,15)
	rotation_degrees = clamp(rotation_degrees, -45, 45)
	
	motion = move_and_slide(motion, up) #--Aplicar las Físicas

func _on_Hurtbox_body_entered(_body):
	if Global.score > Global.hi_score:
		Global.hi_score = Global.score
	Global.score = 0
	
	Global.save_game({"hi_score":Global.hi_score}, "savedata.sav")
	var _error = get_tree().reload_current_scene()
