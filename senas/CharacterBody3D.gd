extends CharacterBody3D

const SPEED = 1.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

# Variável para armazenar a direção do movimento.
var move_direction = Vector3(0, 0, -1)  # Inicialmente, mova-se para cima.

# Variável para armazenar a rotação Y do "robozinho".
var robo_rotation = 0  # Inicialmente, sem rotação.

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var input_dir = Vector3()
	input_dir.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_dir.z = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	if input_dir != Vector3(0, 0, 0):
		move_direction = (transform.basis * input_dir).normalized()

	velocity.x = move_direction.x * SPEED
	velocity.z = move_direction.z * SPEED

	# Defina a rotação do "robozinho" com base nas teclas pressionadas.
	if Input.is_action_pressed("ui_up"):
		robo_rotation = 180
	elif Input.is_action_pressed("ui_down"):
		robo_rotation = 0
	elif Input.is_action_pressed("ui_right"):
		robo_rotation = 90
	elif Input.is_action_pressed("ui_left"):
		robo_rotation = -90

	# Aplicar a rotação do "robozinho".
	$robozinho.rotation_degrees.y = robo_rotation

	move_and_slide()




