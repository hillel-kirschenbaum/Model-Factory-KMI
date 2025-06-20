extends Node

var buildingNum : int = 0

signal move
signal move2
signal move3

signal parentSwap

func wait(seconds : float) -> void:
	await get_tree().create_timer(seconds).timeout	
	return
