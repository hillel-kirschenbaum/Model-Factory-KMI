extends Node3D










































"""
var postTurn : int = 0
var stage : int = -1
var pos : Vector3 = $Truck.position()"""
"""	
func _ready() -> void:
	Global.move.connect(getamoveon)
	Global.move2.connect(getamoveon2)
	Global.move3.connect(getamoveon3)


func getamoveon():
	Global.buildingNum = 0
	stage = 0
		self.rotation_degrees.y += 1
func getamoveon2():
	stage += 1

func getamoveon3():
	stage += 1
	
func _physics_process(delta: float) -> void:
	pass
if stage == -1:
		self.transform.origin += Vector3(0, 0, 0)
	elif pos == Vector3(3.3, 0.95, 17.5):
		print("poop")
		self.transform.origin += Vector3(0.1, 0, 0)
	elif stage == 1:
		await get_tree().create_timer(1).timeout	
		if postTurn == 0:
			self.transform.origin += Vector3(0, 0, -0.1)
			await get_tree().create_timer(6).timeout
			postTurn = 1
		elif postTurn == 1:
			self.transform.origin += Vector3(-0.1, 0, 0)
			postTurn = -1
			await get_tree().create_timer(0.75).timeout	
			stage = -1
			await get_tree().create_timer(1).timeout
			stage = 2
		else:
			pass
	elif stage == 2:
		await get_tree().create_timer(1).timeout	
		self.transform.origin += Vector3(0, 0, 0.1)
"""


			
		
