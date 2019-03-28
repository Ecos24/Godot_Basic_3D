extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		var error = get_tree().reload_current_scene()
		if error != 0:
			print("Error occured while reloading the game")
