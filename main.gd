extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rng = RandomNumberGenerator.new()
	
	for i in range(8):
		
		var b = load("res://butterflies.tscn 16-05-46-879.tscn")

		var x = b.instantiate()
		var rand = rng.randf_range(-1.6, 1.14)
		var rand2 = rng.randf_range(-3.14,3.14)
		
		var rand3 = rng.randf_range(-60, -20)

		x.init(0, 30, -30+(i*5), 0,0, i)
		
		add_child(x)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
