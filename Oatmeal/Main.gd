extends Node2D

const Game = preload("res://Game.gd")
var game

func _ready():
	game = Game.new()
	self.add_child(game)
