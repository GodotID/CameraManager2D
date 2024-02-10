# CameraManager2D
Manage switching between multiple Camera2Ds

## Usage
1. Replace `Camera2D` with our `ManagedCamera2D`
2. Add `CameraManager2D` to your scene
3. Add your cameras to the `CameraManager2D`
4. Use `ManagedCamera2D.enabled` just like how you use `Camera2D.enable`

## Screenshots
| | |
| -- | -- |
![CameraManager in Editor](screenshots/cameramanager.png) <div align="center">Camera manager in Editor</div> | ![ManagedCamera2D in Editor](screenshots/managedcamera.png) <div align="center">Managed camera in Editor</div>
![Custom nodes added by addon](screenshots/customnodes.png) <div align="center">Custom nodes added by addon</div> | ![Camera manager in GDScript](screenshots/cameramanagerscript.png) <div align="center">Camera manager in GDScript</div>

## API
### CameraManager2D
| Property | Type | Description |
| -- | -- | -- |
cameras | `Array[ManagedCamera2D]` | 


#### `add_camera(camera: ManagedCamera2D) -> int`
Add your camera to the manager. Returns the camera index in `cameras` array.

#### `get_camera(index: int) -> ManagedCamera2D`
Get your camera from the manager.

#### `remove_camera(index: int)`
Remove your camera from the manager.

---

### ManagedCamera2D
| Property | Type | Description |
| -- | -- | -- |
enabled | `bool` | Controls wheter the camera can be active or not.<br/>Once ticked, other cameras in CameraManager2D would be disabled.
cam | `Camera2D` | Raw `Camera2D`