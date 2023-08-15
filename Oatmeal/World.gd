extends "res://graph/Graph.gd"

var edges

var kitchen
var garden
var door
var chef
var ingredients

func _ready():
	
	edges = Node2D.new()
	self.add_child(edges)
	
	
	
	kitchen = Entity.new("location", "kitchen")
	kitchen.position = Vector2(100, 100)
	self.add_child(kitchen)
	
	door = Entity.new("item", "door")
	door.position = Vector2(300,100)
	self.add_child(door)
	
	garden = Entity.new("location", "garden")
	garden.position = Vector2(500,100)
	self.add_child(garden)
	
	chef = Entity.new("character", "chef")
	chef.position = Vector2(100,300)
	self.add_child(chef)
	
	ingredients = Entity.new("item","ingredients")
	ingredients.position = Vector2(500,300)
	self.add_child(ingredients)
	
	
	
	var edge = Edge.new(kitchen, chef, "location")
	edges.add_child(edge)
	
	edge = Edge.new(kitchen, door, "location")
	edges.add_child(edge)
	
	edge = Edge.new(garden, door, "location")
	edges.add_child(edge)
	
	edge = Edge.new(garden, ingredients, "location")
	edges.add_child(edge)
	
	
	
	var exit = Exit.new()
	exit.position = Vector2(300, 200)
	self.add_child(exit)
	
	var take = Take.new()
	take.position = Vector2(500, 400)
	self.add_child(take)
	
	edge = Edge.new(door, exit, "event")
	edges.add_child(edge)
	
	edge = Edge.new(ingredients, take, "event")
	edges.add_child(edge)
	
	
	
	exit.do_event({
		"actor" : chef
	})




class Exit extends "res://graph/Event.gd":
	
	func _init().("exit"):
		pass
	
	func do_event(data):
		print(data.actor.name)
		print(edges[0].name)
		
		var actor = data.actor
		var actor_location_edge = actor.find_edge("location")
		var actor_location = actor_location_edge.get_counterpart(actor)
		print(actor_location.name)
		
		var door_edge = find_edge("event")
		var door = door_edge.get_counterpart(self)
		print(door.name)
		
		# grab all locations from door
		# send actor to counterpart





class Take extends "res://graph/Event.gd":
	
	func _init().("take"):
		pass











