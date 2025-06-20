extends Node

func _ready():
	Global.parentSwap.connect(Swap)
	
	print("buldiing number ", Global.buildingNum, " entered") 

func Swap():
	if Global.buildingNum == 1:
		print("buldiing number ", Global.buildingNum, " entered") 
		$Warehouse/Steel.reparent($Truck)
	elif Global.buildingNum == 2:
		print("buldiing number ", Global.buildingNum, " entered")
		$Truck/Steel.reparent($Factory)
	else:
		pass
