extends HSlider

func _on_value_changed(value: float) -> void:
	Engine.time_scale = value
	
	Global.GameSpeed = value
