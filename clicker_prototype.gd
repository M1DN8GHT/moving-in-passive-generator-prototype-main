class_name PrototypeGenerator
extends Control


@export var label : Label

@export var button : Button

@export var timer : Timer

var Clicks : int = 0

func _ready() -> void: 
	update_label_text()

func create_clicks() -> void:
	Clicks += 1
	update_label_text()


func update_label_text() -> void:
	label.text = "Clicks : %s" %Clicks

func begin_gernerating_clicks() -> void:
	timer.start()
	button.disabled = true

func _on_button_pressed() -> void:
	begin_gernerating_clicks()


func _on_timer_timeout() -> void:
	create_clicks()
