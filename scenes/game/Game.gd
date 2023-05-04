extends Node2D

var pipes = preload("res://scenes/pipe/Pipes.tscn")

onready var ground = $Ground
onready var background = $Background
onready var pivot = $PipePivot
onready var hud = $CanvasLayer/HUD

func _ready():
	pass

func _process(delta):
	ground.get_node("Sprite").region_rect.position.x += 32*delta

func spawn_pipes():
	var p = pipes.instance()
	p.position.y = rand_range(-16,16)
	p.position.x = pivot.position.x
	add_child(p)

func _on_PipeTimer_timeout():
	spawn_pipes()
