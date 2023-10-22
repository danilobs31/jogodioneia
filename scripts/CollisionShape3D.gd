extends Area3D


var imagens = [
"res://SPRITES/arvore3.png",
"res://SPRITES/broto3.png",
"res://SPRITES/toco3.png"
] 

@onready var spr = $Sprite3D 


func _on_body_entered(body: CharacterBody3D) -> void:
	spr.texture = load(imagens[2])
	
	
#func _ready():
	#spr.texture = load(imagens[2])
