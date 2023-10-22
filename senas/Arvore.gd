extends Area3D

func _on_body_entered(body):
	if body.is_in_group("player"):
		# Verificar se o corpo que entrou é o personagem (ou seja, está em um grupo "player").
		# Acesse o nó "AnimatedSprite3D" dentro do nó "Arvore" e mude a animação.
		var arvoreAn = $Arvore/arvoreAn
	 	arvoreAn.play("toco")
