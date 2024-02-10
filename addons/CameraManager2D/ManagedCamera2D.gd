@tool
extends Node2D

signal enabled_changed(cam: Node, prev: bool, now: bool)

var cam = Camera2D.new()
## Controls wheter the camera can be active or not.
## Once ticked, other cameras in CameraManager2D would be disabled.
@export
var enabled: bool = false:
	set(val):
		var prev = enabled
		enabled = val
		cam.enabled = val
		if prev != val:
			emit_signal("enabled_changed", self, prev, enabled)

func _init():
	add_child(cam)
	cam.enabled = false
