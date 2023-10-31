extends RigidBody2D

func _input(event):
	if event.is_action_pressed("fly"):
		linear_velocity = Vector2(0,-500)
		angular_velocity = -10

func _physics_process(delta):
	if rotation_degrees <= -45:
		angular_velocity = 2


func _on_body_entered(body):
	if body.is_in_group("obstacles"):
		get_tree().paused = true
		get_tree().get_node("gameover").show()
