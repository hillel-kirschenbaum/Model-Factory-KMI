extends Node

func _ready():
	Global.parentSwap.connect(Swap)
	
	print("building number ", Global.buildingNum, " entered") 

func Swap():
	if Global.buildingNum == 1:
		$Warehouse/Steel/RigidBody3D/switch.reparent($Warehouse/Steel/StaticBody3D)
		print("building number ", Global.buildingNum, " entered") 
		$Warehouse/Steel.reparent($Truck)
	elif Global.buildingNum == 2:
		print("building number ", Global.buildingNum, " entered")
		$Truck/Steel.reparent($Factory)
	else:
		pass
