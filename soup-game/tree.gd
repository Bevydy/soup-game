extends Tree

@onready var list_tree = $"."
var isVisible = true

# Called when the node enters the scene tree for the first time.
func _ready():
	var list_root = list_tree.create_item()
	list_root.set_text(0, "To do list [Press [1] to toggle list]")
	
	
	var movement = list_tree.create_item(list_root)
	movement.set_text(0, "Movement")
	var wasd = list_tree.create_item(movement)
	wasd.set_text(0, "wasd/arrow keys & jumping")
	var movementFeel = list_tree.create_item(movement)
	movementFeel.set_text(0, "make the movement feel good")
	
	var combat = list_tree.create_item(list_root)
	combat.set_text(0, "Combat")
	var basicAttacks = list_tree.create_item(combat)
	basicAttacks.set_text(0, "Basic attack set")
	var healthBar = list_tree.create_item(combat)
	healthBar.set_text(0, "Health system")
	var dummy = list_tree.create_item(combat)
	dummy.set_text(0, "A simple practice dummy so we dont have to code enemy ai yet")
	
	var npcs = list_tree.create_item(list_root)
	npcs.set_text(0, "npcs")
	var npcTemplate = list_tree.create_item(npcs)
	npcTemplate.set_text(0, "Simple reuseable npc template for future npcs")
	var dialog = list_tree.create_item(npcs)
	dialog.set_text(0, "dialog system")
	var npcQuests = list_tree.create_item(npcs)
	npcQuests.set_text(0, "A demo npc where they can recognise you have an item they want to trade")


func _input(event):
	if event.is_action_pressed("Toggle_to_do_list"):
		if isVisible == true:
			isVisible = false
			$".".visible = isVisible 
		else:
			isVisible = true
			$".".visible = isVisible 
