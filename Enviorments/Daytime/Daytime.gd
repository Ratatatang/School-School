extends Node2D

onready var player = $Player
onready var dialog = $Player/DialogBox
onready var camera = $Player/Camera2D

func passDialog(diaPath):
	dialog.start(diaPath)

func changeScene(scenePath, sceneName = "Bedroom"):
	$Scene.texture = load("res://Enviorments/Daytime/Scenes/"+str(scenePath)+".png")
	
	$Area_Label.visible = true
	$Area_Label.text = sceneName
	$Area_Label.visible_characters = 0
	
	while $Area_Label.visible_characters < sceneName.length():
				$Area_Label.visible_characters += 1
				$Timer.start()
				yield($Timer, "timeout")
				
	$Timer.wait_time = 0.5
	$Timer.start()
	yield($Timer, "timeout")
	$Area_Label.visible = false
	$Timer.wait_time = 0.05
				
func setCurrent():
	camera.current = true
