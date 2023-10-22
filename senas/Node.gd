extends Node

# Importe a cena "Arvore".
const ArvoreScene = preload("res://senas/arvore.tscn")

func _ready():
	# Crie múltiplas instâncias da cena "Arvore" em posições específicas.
	create_tree_instance(Vector3(10, 0, 10))
	create_tree_instance(Vector3(20, 0, 20))
	create_tree_instance(Vector3(30, 0, 30))
	# Adicione quantas instâncias você desejar.

func create_tree_instance(position):
	# Carregue a cena "Arvore" e crie uma instância.
	var tree_instance = ArvoreScene.instance()
	if tree_instance != null:
		tree_instance = tree_instance.duplicate()
		tree_instance.transform.origin = position
		# Adicione a instância como uma criança do controlador das árvores.
		add_child(tree_instance)
