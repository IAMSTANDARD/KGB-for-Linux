extends Control

func _ready():
	OS.execute("xset",["led", "named", "Scroll Lock"], false)

func _on_led_on_pressed():
	OS.execute("xset",["led", "named", "Scroll Lock"], false)
	$light_left.enabled = true
	$light_right.enabled = true
	$select.play()
	#xset led named "Scroll Lock"
	


func _on_led_off_pressed():
	OS.execute("xset",["-led", "named", "Scroll Lock"], false)
	$light_left.enabled = false
	$light_right.enabled = false
	$select.play()
