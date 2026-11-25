extends Node3D
var x = 0 ;
var y = 0;
var _rotation = 0;
var z=0;
var _rotation_z = 0
var n = 1
@onready var _animation_player = $AnimationPlayer
#@onready var _animation_player1 = $AnimationPlayer1
#@onready var _animation_player2 = $AnimationPlayer2

func apply_texture(mesh_instance_node, texture_path):
	var texture = ImageTexture.new()
	var image = Image.new()
	image.load(texture_path)
	var t = texture.create_from_image(image)
	var mat = mesh_instance_node.get_surface_override_material(0) as StandardMaterial3D
	
	
	var actualMaterial = StandardMaterial3D.new()  # creates a new material
	actualMaterial.albedo_texture = t
	actualMaterial.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
 # assigns the texture to the new material
	mesh_instance_node.set_surface_override_material(0, actualMaterial)  # applies the material to the MeshInstance3D
	# Assign the new texture to the albedo (base color) channel
		

func init (_x = 20, _y=30, _z=10, rot=1, rot_z = 0, _n= 0):
	x = _x
	y = _y
	z = _z
	n = str(_n+1)
	_rotation = rot
	_rotation_z = rot_z
	
	
	
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var i =-1
	position.x = x 
	position.y = y
	position.z = z
	rotation.y = _rotation
	rotation.z = _rotation_z
	
	
	
	var child =  find_child("LeftWingMesh", true, true)
	print(child)
	var s = "res://wings/%s.png"
	var r_child =  find_child("RightWingMesh", true, true)

	apply_texture(child, s % n )
	apply_texture(r_child, s % n )


	
	#_animation_player.play("BodyAction")
	
	#_animation_player.play("BodyAction")
	#_animation_player.play("RightWingAction")
	#_animation_player.play("BodyAction")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#_animation_player.play("BodyAction")
	#_animation_player1.play("RightWingAction")
	#_animation_player2.play("RightWingAction_001")
	


	pass
