extends Area3D

func _on_area_entered(area: Area3D) -> void:
	Global.buildingNum += 1
	Global.parentSwap.emit()
