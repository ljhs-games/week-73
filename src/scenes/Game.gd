extends Node2D

func _on_Speed_Boost_body_entered(body):
	hide()
	player_speed_boost()