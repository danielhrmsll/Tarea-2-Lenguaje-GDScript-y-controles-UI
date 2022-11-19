extends Control
var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	$HBoxContainer/ProgressBar1.value= rng.randf_range(0, 100)
	$HBoxContainer/TextureProgress2.value= rng.randf_range(0, 100)
	$HBoxContainer/TextureProgress3.value= rng.randf_range(0, 100)
	
func _on_Timer_timeout():
	$HBoxContainer/ProgressBar1.value+=1
	$HBoxContainer/TextureProgress2.value+=1
	$HBoxContainer/TextureProgress3.value+=1

func _on_TextureProgress3_mouse_entered():
	$HBoxContainer/TextureProgress3.value-=10

func _on_ProgressBar1_mouse_entered():
	$HBoxContainer/ProgressBar1.value-=10
	$HBoxContainer/ProgressBar1.get("custom_styles/fg").bg_color=(Color(rng.randf_range(0,1),rng.randf_range(0,1),rng.randf_range(0,1),rng.randf_range(0,1)))

var mouse;
func _on_TextureProgress2_mouse_entered():
		$HBoxContainer/TextureProgress2.rect_rotation+=10
