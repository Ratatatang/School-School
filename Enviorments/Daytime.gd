extends Node2D

onready var player = $Player
onready var dialog = $Player/DialogBox

func passDialog(diaPath):
	dialog.start(diaPath)
