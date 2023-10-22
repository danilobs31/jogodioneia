extends CharacterBody3D

@onready var texture:= $texture as Sprite3D
@onready var anim:= $anim as AnimationPlayer
@onready var colide:= $Area3D.colide as bool

func muda_textura()->void:
	if colide==true:
	
