extends Node2D

var abilitys
func _ready():
	abilitys = self.get_children()

func ActivateAbility(index):
	#if ability is not avaiable, return false
	if (index > abilitys.size()):
		return false
		
	#
	print("activate ability")
	abilitys[index-1].Activate()
	return true
