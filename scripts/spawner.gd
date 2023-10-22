extends Node

# Atribua o caminho da cena do objeto que você deseja instanciar
var objeto_a_ser_instanciado : PackedScene

func _ready():
	# Carregue a cena a partir do PackedScene
	objeto_a_ser_instanciado = load("res://senas/tree.tscn")

	if objeto_a_ser_instanciado:
		for arvore in range(10):
			# Instancie o objeto
			var novo_objeto = objeto_a_ser_instanciado.instance()

			if novo_objeto:
				# Defina a posição aleatória no mapa
				novo_objeto.translation = Vector3(randf_range(-10, 10), 0, randf_range(-10, 10))

				# Adicione o objeto ao cenário
				add_child(novo_objeto)
			else:
				print("Erro ao instanciar a cena.")
	else:
		print("Erro ao carregar a cena.")
