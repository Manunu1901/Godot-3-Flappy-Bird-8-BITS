extends Position2D

var speed = 50

func _physics_process(delta):
	position.x-=speed*delta
	
	if position.x <= -76:
		queue_free()


func _on_Area2D_area_exited(_area):
	Global.game_hud().add_score()
