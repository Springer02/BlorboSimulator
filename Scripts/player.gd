extends CharacterBody2D

## Name: Player.gd
## 
## Description: Player controller template with game modifications for abilities  
## Author: Damien Springer
## Contact: damien@damienrenee.com

const SPEED = 300
const JUMP_VELOCITY = -400
@onready var abilitycontainer = $AbilityContainer
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var abilityindex = AbilityListen()
	if (abilityindex >= 0):
		abilitycontainer.ActivateAbility(abilityindex)
	move_and_slide()

func AbilityListen():
	if Input.is_action_just_pressed("Ability1"):
		return 1
	elif Input.is_action_just_pressed("Ability2"):
		return 2
	elif Input.is_action_just_pressed("Ability3"):
		return 3
	else:
		return -1

func _proccess(_delta):
	pass
