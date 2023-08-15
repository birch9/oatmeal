extends Node2D

const WorldGraph = preload("res://World.gd")
var world

func _ready():
	world = WorldGraph.new()
	self.add_child(world)
	
