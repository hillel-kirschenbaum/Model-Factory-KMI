extends Marker3D

func _ready() -> void:
	Global.getMarkerPos.connect(MarkerPos)

func MarkerPos():
	if Global.buildingNum == 1:
		Global.MarkerPos = to_global(transform.origin)

func _process(delta: float) -> void:
	pass
		
