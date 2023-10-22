extends AnimatedSprite3D

var bateu = false  # Inicialmente, a variável "bateu" é definida como false

func _ready():
	if bateu:
		# Se a variável "bateu" for true, reproduza a animação "toco".
		play("toco")
