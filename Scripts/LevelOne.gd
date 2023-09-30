extends Node2D


func _on_top_body_entered(body):
	body.direction.y *= -1


func _on_bottom_body_entered(body):
	body.direction.y *= -1


func _on_right_body_entered(body):
	body.queue_free()


func _on_left_body_entered(body):
	body.queue_free()
