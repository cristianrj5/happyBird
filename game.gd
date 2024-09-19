extends Node

var Obstaculo = preload("res://obstaculos.tscn")

func _on_timer_timeout() -> void:
	var obstaculo = Obstaculo.instantiate()
	obstaculo.position.x = 270
	add_child(obstaculo)
