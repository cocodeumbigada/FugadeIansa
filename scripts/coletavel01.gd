extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Area2D_body_enter( body ):
	if body.get_layer_mask() == 1:
		get_node("shape").queue_free()
		get_node("Sprite/anima").play("collect")
		yield(get_node("Sprite/anima"), "finished")
		queue_free()
		
		
	 # replace with function body
