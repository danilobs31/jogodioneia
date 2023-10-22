extends Area3D

var bateu = false 

func _on_body_entered(body):
	if body.is_in_group("player"):
		# Verificar se o corpo que entrou na área pertence ao grupo "player".
		bateu = true


func _on_area_entered(area):
	pass # Replace with function body.
