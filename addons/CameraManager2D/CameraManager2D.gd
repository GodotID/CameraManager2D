@tool
extends Node2D

## An array of ManagedCamera2D
@export
var cameras: Array[Node] = []

# Called when the node enters the scene tree for the first time.
func _ready():
	if len(cameras) > 0:
		var myCams = cameras.duplicate()
		cameras.clear()
		
		for cam in myCams:
			add_camera(cam)

## Add a Camera2D to the `cameras` array.
## The function will not add the camera if it's already added.
## Eitherway, it will still returns its index.
## Returns the index of the added camera in `cameras` array
func add_camera(camera: Node) -> int:
	if camera in cameras:
		return cameras.find(camera)
	
	camera.connect("enabled_changed", __on_one_of_camera_property_change)
	cameras.append(camera)
	return len(cameras)-1

func get_camera(index: int) -> Camera2D:
	if index >= len(cameras):
		return null
	
	return cameras[index]

func __on_one_of_camera_property_change(cam, prev, now):
	if (prev == true) and (now == false):
		return
	
	for camera in cameras:
		if camera == cam:
			continue
		camera.enabled = false
	
	cam.enabled = true
