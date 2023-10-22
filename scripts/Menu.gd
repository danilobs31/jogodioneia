extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://cenas/mundo.tscn")
	# Apertar jogar muda para a cena "mundo"

func _on_sair_pressed():
	get_tree().quit() 
	#sai do jogo



func _on_tutorial_pressed():
	get_tree().change_scene_to_file("res://cenas/tutorial.tscn")
	
func _on_instagram_pressed() -> void:
	OS.shell_open("https://gustavo-atomos.itch.io/")



func _on_itchio_pressed():
	OS.shell_open("https://gustavo-atomos.itch.io")
