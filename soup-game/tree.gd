extends Tree


# Called when the node enters the scene tree for the first time.
func _ready():
	var list_tree = $Tree
	var root = list_tree.create_item()
	root.set_text(0, "test")
