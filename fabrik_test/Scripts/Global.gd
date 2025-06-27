extends Node

var buildingNum : int = 0

var SteelPos : Vector3
var MarkerPos : Vector3
signal getMarkerPos

var GameSpeed : float
var SteelAmount : float

var carPos : Vector3 = Vector3()
signal move
signal move2
signal move3

signal parentSwap

func wait(seconds : float) -> void:
	await get_tree().create_timer(seconds).timeout	
	return
