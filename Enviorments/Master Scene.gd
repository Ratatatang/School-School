extends Node2D

onready var currentPhase = $Daytime 
var currentTime = time

class time:
	var AMPM
	var hours
	var minutes
	
	func _init():
		AMPM = "AM"
		hours = 9
		minutes = 0
		
	func checkTime():
		if(AMPM == "AM"):
			if(hours < 5):
				return "Day"
			else:
				return "Night"
		else:
			if(hours > 12):
				return "Night"
			else:
				return "Day"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func checkTime():
	if(currentTime.checkTime() == "Day"):
		currentPhase = $Daytime
		$Daytime.visible = true
		$Nightime.visible = false
	elif(currentTime.checkTime() == "Night"):
		currentPhase = $Nightime
		$Daytime.visible = false
		$Nightime.visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
