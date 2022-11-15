extends Node

#var held_object: Node2D = null

#func _ready() -> void:
#	for node in get_tree().get_nodes_in_group("pickable"):
#		node.connect("touched", self, "_on_pickable_clicked")

#func _on_pickable_clicked(object: Node2D) -> void:
#	if !held_object:
#		print(held_object)
#		held_object = object
#		held_object.pickup()
#
#func _unhandled_input(event: InputEvent) -> void:
#	if held_object and event.is_action_released("touch"):
#		held_object.drop()
#		held_object = null
