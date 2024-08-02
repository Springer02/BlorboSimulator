extends abilitybase

class_name bulletabilitybase

const Bullet = preload("res://Scenes/Abilities/bullet.tscn")
func _init():
	myTarget = target.single
	usedTrack = trackUsed.might
	damageType = trackTargeted.might

func Activate():
	var bullet = Bullet.instantiate()
	owner.add_child(bullet)
	bullet.global_position = self.global_position
	bullet.damageType = self.damageType
	print("bullet activated")
