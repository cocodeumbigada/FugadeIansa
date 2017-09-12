#Scripit: Coletáveis acarajé 
extends Area2D
var acaraje = int (50)
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

		# Called every time the node is added to the scene.
	# Initialization here
	

func _on_Area2D_body_enter( body ):
		if body.get_layer_mask() == 1:
			game.score += acaraje
			#score_current += 1
			get_node("shape").queue_free()
			get_node("Sprite/anima").play("collect")
			yield(get_node("Sprite/anima"), "finished")
			queue_free()
		
			

		
	 # replace with function body
