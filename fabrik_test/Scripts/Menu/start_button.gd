extends Control

func _on_start_button_button_down() -> void:
	resume()

func _ready() -> void:
	pause()
	
	
func resume():
	get_tree().paused = false
	get_node("/root/FactoryModel/CanvasLayer/Menu").visible = false


func pause():
	get_tree().paused = true
		#get_node("/root/FactoryModel/CanvasLayer/Menu").visible = true # fix this
