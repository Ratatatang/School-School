extends Node2D

onready var cameraScene = "res://Enviorments/Nightime/Screens/Cameras.tscn"

var state = stateMachine.DESK

enum stateMachine{
	DESK,
	CAMERAS
}

func _process(delta):
	if Input.is_action_just_pressed("cameras"):
		if(state == stateMachine.DESK):
			state = stateMachine.CAMERAS
			self.add_child(load(cameraScene).instance())
		elif(state == stateMachine.CAMERAS):
			state = stateMachine.DESK
			self.remove_child($Cameras)
			$Camera2D.current = true
		
func changeScene(scenePath, sceneName = "Bedroom"):
	pass
	
func passDialog(scenePath, sceneName = "Bedroom"):
	pass
	
func setCurrent():
	$Camera2D.current = true

