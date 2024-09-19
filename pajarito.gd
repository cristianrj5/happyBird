extends RigidBody2D

var puntos := 0
var speed := 400

func _integrate_forces(state):
	if Input.is_action_just_pressed("ui_accept"):
		#linear_velocity = Vector2.ZERO pone la veolicdad en cero
		linear_velocity = Vector2.ZERO
		$"../flap".play()
		apply_central_impulse(Vector2(0,-speed))
		$AnimatedSprite2D.play()


func morir():
	get_tree().paused = true
	$"../hit".play()
	$"../mensaje".show()
	$"../mensaje/gameOver".show()
	
	
	
func ganarPuntos():
	puntos += 1
	$"../point".play()
	$"../puntos".text = str(puntos)
	

func _on_detectar_suelo_techo_body_entered(body: Node2D) -> void:
	if body.is_in_group("suelo"):
		morir()
		
	
	
