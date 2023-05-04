extends Control

func _ready():
	get_tree().paused = true
	pass

func _process(_delta):
	$"HI-SCORE".text = "HI-SCORE:" + str(Global.hi_score)


func _on_Play_pressed():
	visible = false
	get_tree().paused = false

func _on_Exit_pressed():
	get_tree().quit()
