extends Node3D

################################################################################

func _on_area_3d_area_entered(area: Area3D) -> void:
	if Global.buildingNum == 2:
		print("move3 is go")
		Global.move3.emit()
		global_position = Global.SteelPos
	elif Global.buildingNum == 1:
		Global.move2.emit()
		global_position = Global.MarkerPos + Vector3(0,2,0)
	else:
		Global.move.emit()
