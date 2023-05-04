extends Node

var score = 0
var hi_score = 0

func _ready():
	if File.new().file_exists("savedata.sav"):
		hi_score = load_game("savedata.sav").result.hi_score

func load_game(filename):
	var file = File.new()
	var json_string
	
	file.open(filename, File.READ)
	json_string = file.get_as_text()
	file.close()

	var datos = JSON.parse(json_string)

	return datos

func save_game(data, filename):
	var file = File.new()
	var json_string = JSON.print(data)
	file.open(filename, File.WRITE)
	file.store_string(json_string)
	file.close()

func game_hud():
	return get_tree().get_nodes_in_group("HUD")[0]
