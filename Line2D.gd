extends Line2D

@onready var body = $StaticBody2D

func _ready():
	for i in points.size() - 1:
		var new_shape = CollisionShape2D.new()
		body.add_child(new_shape)
		var segment = SegmentShape2D.new()
		segment.a = points[i]
		segment.b = points[i + 1]
		new_shape.shape = segment
		

#func _ready():
	#for i in points.size() - 1:
		#var new_shape = CollisionShape2D.new()
		#$StaticBody2D.add_child(new_shape)
		#var rect = RectangleShape2D.new()
		#new_shape.position = (points[i] + points[i + 1]) / 2
		#new_shape.rotation = points[i].direction_to(points[i + 1]).angle()
		#var length = points[i].distance_to(points[i + 1])
		#rect.extents = Vector2(length / 2, width / 2)
		#new_shape.shape = rect
