extends Node2D

var type
var edges = []
var label

func _init(type, name):
	self.type = type
	self.name = name
	
	label = Label.new()
	label.text = name
	label.rect_position = Vector2(-30.0,-20.0)
	self.add_child(label)

func _draw():
	self.draw_circle(Vector2.ZERO, 50.0, Color(0.8,0.8,0.8))
	self.draw_circle(Vector2.ZERO, 49.0, Color(0.2,0.2,0.2))

func find_edge(type):
	for edge in edges:
		if edge.relationship == type:
			return edge
	return null
