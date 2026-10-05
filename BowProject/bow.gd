extends Sprite2D
const ARROW = preload("uid://bek4t2xq0l5am")
@onready var bow: Sprite2D = $"."

@export var speed = 4000 
@export var bow_speed = 1
@onready var line_edit: LineEdit = $"../Camera2D/LineEdit"

func _process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	bow.position += direction * bow_speed
	if Input.is_action_pressed("ui_accept"):
		fire()
func _ready() -> void:
	line_edit.text = str(speed)
	
func fire() -> void:
	var arrow = ARROW.instantiate()
	
	arrow.global_position = global_position
	arrow.global_rotation = global_rotation
	
	var direction = transform.x 
	
	#arrow.linear_velocity = direction * speed
	
	arrow.apply_central_impulse(direction * speed)
	
	get_tree().current_scene.add_child(arrow)
	
	
func _on_button_pressed() -> void:
	fire()

func set_speed(speed_given: int):
	speed = speed_given
	
func _on_line_edit_text_changed(new_text: String) -> void:
	set_speed(int(new_text))
