extends Node2D

func _input(event):
	if Input.is_action_just_pressed("ui_left"):
		print("LEFT")
		$Icon/Camera2D.enabled = true
	elif Input.is_action_just_pressed("ui_right"):
		print("RIGHT")
		$Icon2/Camera2D.enabled = true
