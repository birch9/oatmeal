extends Node2D

var a
var b
var relationship
var data

func _init(a, b, relationship, data=null):
	self.a = a
	self.b = b
	self.relationship = relationship
	self.data = data
	
	a.edges.push_back(self)
	b.edges.push_back(self)
	
	self.name = "edge"

func _draw():
	self.draw_line(a.position, b.position, Color('#ffffff'))

func get_counterpart(from):
	if from == a:
		return b
	if from == b:
		return a
	return null
