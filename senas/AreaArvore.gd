extends Area3D

func _on_body_entered(body):
	if body.is_in_group("player"):
		# Verifica se o corpo que entrou na área pertence ao grupo "player".
		queue_free()  # Deleta o objeto (nó) quando o jogador entra em contato.
