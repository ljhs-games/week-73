extends Node2D

const chunk_width = 1400

var cur_chunk_pos = Vector2()

# key is likelyhood 1-100%, value is chunk scene
const chunks = {
	100: preload("res://nodes/chunks/Flat.tscn")
}

func next_chunk():
	#TODO chunk generation
	var cur_chunk = preload("res://nodes/chunks/Flat.tscn").instance()
	add_child(cur_chunk)
	cur_chunk.global_position = cur_chunk_pos
	cur_chunk_pos.x += chunk_width