extends Node3D

var steel = preload("res://Scenes/Steel.tscn")


func inst(pos):
	for i in range(Global.SteelAmount - 1):
		var instance = steel.instantiate()
		instance.position = pos
		add_child(instance)
	
	
func _ready() -> void:
	inst(Vector3(-1, 0, 0))
