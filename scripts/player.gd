extends CharacterBody3D

@export
var camera :Camera3D

const JUMP_VELOCITY = 4.5

var is_alive : bool = true

@export var dash_speed = 30
var can_dash = true
var SPEED = 10.0

var jumpCount = 0
var maxjumps = 3

@export var inventory_data: inventoryData

@export
var initial_health : float

var current_health : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_health = initial_health
	$Control/TextureProgressBar.max_value = initial_health



#oti afora to movement
func _physics_process(delta: float) -> void:
	#gravity
	if not is_on_floor():
		velocity += get_gravity() * delta

	if is_on_floor():
		jumpCount = 0
	
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and jumpCount < maxjumps:
		velocity.y = JUMP_VELOCITY
		jumpCount += 1
		$Skeleton_Mage/AnimationPlayer.current_animation = 'Jump_Full_Short'


	# Get the input direction and handle the movement/deceleration.
	var input_dir := Input.get_vector("a", "d", "w", "s")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
		$Skeleton_Mage/AnimationPlayer.current_animation = 'Running_B'
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
		$Skeleton_Mage/AnimationPlayer.current_animation = 'Idle_B'
	
	#gia to dash
	if Input.is_action_just_pressed("dash") and can_dash:
		can_dash = false
		dash()
		$DashCooldown.start()
	move_and_slide()
	
	#kwdikas gia na anagnwrizei ton cursor kai na strefei to oplo sthn antistoixh pleura
	var mouse_pos = get_viewport().get_mouse_position()
	var ray_origin =camera.project_ray_origin(mouse_pos)
	var ray_direction = ray_origin + camera.project_ray_normal(mouse_pos) * 500
	var ray_query = PhysicsRayQueryParameters3D.create(ray_origin, ray_direction)
	
	ray_query.collide_with_bodies = true
	
	var space_state = get_world_3d().direct_space_state
	var ray_result =space_state.intersect_ray(ray_query)
	if(!ray_result.is_empty()):
		look_at(ray_result.position)

#otan mas akoumpaei to enemy na pethainei
func _on_area_3d_body_entered(body):
	if body.is_in_group("enemy"):
		is_alive = false
		current_health -=10
		$Control/TextureProgressBar.value = current_health
		if current_health == 0: 
			get_tree().change_scene_to_file("res://UIscenes/gameOver.tscn")
		


#kathe posh wra exei dhkaiwma na paei san bolida
func _on_dash_cooldown_timeout() -> void:
	can_dash = true

func dash():
	SPEED = SPEED + dash_speed
	$dashtime.start()
#posh wra phgainei san bolida
func _on_dashtime_timeout() -> void:
	SPEED = 5
