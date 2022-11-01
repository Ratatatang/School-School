
extends Node2D

onready var currentPhase = $Daytime

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("test_button"):
		changeTime()
	if Input.is_action_just_pressed("test_2"):
		currentPhase.passDialog("TEST")
	if Input.is_action_just_pressed("test_3"):
		currentPhase.changeScene("badroom")
	if Input.is_action_just_pressed("test_4"):
		currentPhase.changeScene("MONA_LISA")
		
func changeTime(time = " "):
	if(time == " "):
		if(currentPhase == $Daytime):
			currentPhase = $Nightime
			$Nightime.setCurrent()
			$Daytime.visible = false
			$Nightime.visible = true
		else:
			currentPhase = $Daytime
			$Daytime.setCurrent()
			$Daytime.visible = true
			$Nightime.visible = false
	else:
		if(time == "Day" or time == "Daytime"):
			currentPhase = $Daytime
			$Daytime.setCurrent()
			$Daytime.visible = true
			$Nightime.visible = false
		if(time == "Night" or time == "Nightime"):
			currentPhase = $Nightime
			$Nightime.setCurrent()
			$Daytime.visible = false
			$Nightime.visible = true

