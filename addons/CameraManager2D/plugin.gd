@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("CameraManager2D", "Node2D", preload("res://addons/CameraManager2D/CameraManager2D.gd"), preload("res://icon.svg"))
	add_custom_type("ManagedCamera2D", "Node2D", preload("res://addons/CameraManager2D/ManagedCamera2D.gd"), preload("res://icon.svg"))


func _exit_tree():
	remove_custom_type("CameraManager2D")
	remove_custom_type("ManagedCamera2D")
