extends Area3D

func _on_area_entered(area: Area3D) -> void:
	Global.buildingNum += 1
	Global.parentSwap.emit()
	
	if Global.buildingNum == 2:
		get_node("/root/FactoryModel/Factory/Steel").position = Vector3(0, 7.5, 0)
		Global.move3.emit()
