extends ParallaxLayer

@onready var sprite_2d: Sprite2D = $Sprite2D

@export var texture: Texture2D
@export var scroll_scale: float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	motion_scale.x = scroll_scale
	var scale_f = get_viewport_rect().size.y / GameManager.BG_IMG_HEIGHT
	sprite_2d.texture = texture
	sprite_2d.scale = Vector2(scale_f, scale_f)
	motion_mirroring.x = GameManager.BG_IMG_WIDTH * scale_f
