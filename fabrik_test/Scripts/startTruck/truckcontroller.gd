extends VehicleBody3D

@export var max_steering = 0.9
@export var engine_power = 0

var path = 12

func rotate90():
	for i in range(15):
		self.rotation_degrees.y += 6
		await get_tree().create_timer(0.0166667).timeout	

func trip(waitingTime : float):
	engine_power = 0
	rotate90()
	engine_power = 155
	await get_tree().create_timer(waitingTime).timeout	

func _ready():
	Global.move.connect(move)
	Global.move2.connect(move2)
	Global.move3.connect(move3)

func move():
	engine_power = 150

func move2():
		
	trip(5.6 / Global.GameSpeed)
	Global.getMarkerPos.emit()
	await get_tree().create_timer(5.6).timeout
		
	trip(3.6 / Global.GameSpeed)

func move3():
	#await get_tree().create_timer(3.0).timeout	

	trip(2.5 / Global.GameSpeed)
	
	await get_tree().create_timer(4.75).timeout	
	engine_power = 0
	await get_tree().create_timer(1.5).timeout	
	rotate90()

func _process(delta: float):	
	steering = lerp(steering, Input.get_axis("ui_right", "ui_left") * max_steering, delta * 10)
	engine_force =  engine_power
