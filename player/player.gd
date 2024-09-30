extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const GRAVITY = 800

var direction : float

@export var player_number : int = 1
@export var player_hp : int = 5

func _ready() -> void:
	if player_number == 1:
		$Sprite2D.set_texture('red_player.png')
	elif player_number == 2:
		$Sprite2D.set_texture('blue_player.png')

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed('p1_jump') and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis('p1_left', 'p1_right')
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
