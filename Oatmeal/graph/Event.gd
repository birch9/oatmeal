extends Node2D

var edges = []
var label

func _init(name):
	self.name = name
	label = Label.new()
	label.text = name
	label.rect_position = Vector2(-30.0,-20.0)
	self.add_child(label)

func do_event(data):
	pass

func find_edge(type):
	for edge in edges:
		if edge.relationship == type:
			return edge
	return null

func _draw():
	
	var pts = PoolVector2Array([
		Vector2(-40.0, -40.0),
		Vector2(40.0, 0.0),
		Vector2(-40.0, 40.0)
	])
	self.draw_colored_polygon(pts, Color('#ffffff'))
	
	pts = PoolVector2Array([
		Vector2(-39.0, -39.0),
		Vector2(39.0, 0.0),
		Vector2(-39.0, 39.0)
	])
	self.draw_colored_polygon(pts, Color('#222222'))
