extends Control

onready var score_label = $ScoreLabel
onready var pause_menu = $PauseMenu

func add_score():
	Global.score+=1
	score_label.text = str(Global.score)


func _on_PauseButton_pressed():
	pause_menu.visible = true
