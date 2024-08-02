extends Area2D

var speed = 600
var timer = 8
var damageType = abilitybase.trackTargeted.might

func _physics_process(delta):
	position += transform.x * speed * delta
	timer -= delta
	if (timer < 0):
		queue_free()

func _on_Bullet_body_entered(body):
	body.queue_free()
	queue_free()
