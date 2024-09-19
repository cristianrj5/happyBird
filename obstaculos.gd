extends Node2D

var speed := 150

func _ready():
	randomize()
	position.y = randf_range(112.0,286.0)

func _process(delta):
	position.x -= speed * delta
	if position.x <= -350:
		queue_free()


func _on_tuberia_1_body_entered(body: Node2D) -> void:
	if body.is_in_group("pajarito"):
		body.morir()

func _on_tuberia_2_body_exited(body: Node2D) -> void:
		if body.is_in_group("pajarito"):
			body.morir()


func _on_score_body_entered(body: Node2D) -> void:
	if body.is_in_group("pajarito"):
			body.ganarPuntos()
