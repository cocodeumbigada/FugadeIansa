# Script score
extends Node

var score = 0 setget setScore
signal score_changed
func _ready():
	
	pass

func setScore(valor):
	if valor > 0 :
		score = valor
		emit_signal("score_changed")