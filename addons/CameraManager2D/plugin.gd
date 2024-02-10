@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("CameraManager2D", "Node2D", preload("res://addons/CameraManager2D/CameraManager2D.gd"), preload("res://addons/CameraManager2D/icons/CameraManager2D.png"))
	add_custom_type("ManagedCamera2D", "Node2D", preload("res://addons/CameraManager2D/ManagedCamera2D.gd"), preload("res://addons/CameraManager2D/icons/ManagedCamera2D.png"))


func _exit_tree():
	remove_custom_type("CameraManager2D")
	remove_custom_type("ManagedCamera2D")
