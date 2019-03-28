extends Area

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_x(deg2rad(30*delta))
	rotate_y(deg2rad(30*delta))

func _on_Points_body_entered(body):
	if body is KinematicBody:
		queue_free()
