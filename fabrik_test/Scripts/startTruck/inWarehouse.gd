extends Node3D
	
func _on_area_3d_area_entered(area: Area3D) -> void:
	if Global.buildingNum == 2:
		Global.move3.emit()
	elif Global.buildingNum == 1:
		Global.move2.emit()
	else:
		Global.move.emit()	





	
