extends Node2D

var type
var edges = []

func _init(type, name):
	self.type = type
	self.name = name

func _draw():
	self.draw_circle(Vector2.ZERO, 50.0, Color(0.8,0.8,0.8))
	self.draw_circle(Vector2.ZERO, 49.0, Color(0.2,0.2,0.2))
