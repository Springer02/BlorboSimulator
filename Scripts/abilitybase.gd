extends Node2D
## Name: abilitybase.gd
## 
## Description: default script that hopefully abilities will inherit from
##
## Author: Damien Springer
## Contact: damien@damienrenee.com

class_name abilitybase
# Attributes 
enum target
{
	origin,
	single,
	group,
}

enum trackUsed
{
	might,
	speed,
	intellect
}

enum trackTargeted
{
	might,
	speed,
	intellect,
}

var myTarget : target
var usedTrack : trackUsed
var damageType : trackTargeted

#Activate Ability
func Activate():
	print("abilitybase activated")

