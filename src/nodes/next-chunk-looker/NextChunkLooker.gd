extends Area2D

export (NodePath) var chunk_placer_path

const chunk_length = 1400

onready var chunk_placer_node = get_node(chunk_placer_path)

func _ready():
	chunk_placer_node.next_chunk()

func _on_NextChunkLooker_body_entered(body):
	if body.is_in_group("player"):
		chunk_placer_node.next_chunk()
		global_position += Vector2(chunk_length, 0)