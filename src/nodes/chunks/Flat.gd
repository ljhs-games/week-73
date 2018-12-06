extends Node2D

# TODO instance random powerups in flat

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()