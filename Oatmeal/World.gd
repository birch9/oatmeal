extends "res://graph/Graph.gd"



func _ready():
	var e = Entity.new("location", "kitchen")
	e.position = Vector2(100, 100)
	self.add_child(e)
	printt(e.type, e.name)
