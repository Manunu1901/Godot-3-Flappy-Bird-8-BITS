extends Control

func _on_Resume_pressed():
	visible = false

func _on_Menu_pressed():
	visible = false
	var _error = get_tree().reload_current_scene()

func _on_PauseMenu_visibility_changed():
	get_tree().paused = !get_tree().paused
