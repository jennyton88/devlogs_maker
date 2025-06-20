extends VBoxContainer;


## Signals =====

signal get_devlogs;
signal edit_curr_text;
signal post_curr_text;

signal import_file;
signal export_file;

signal clear_text;
#signal add_template;

## Visuals =====

## Reset =====

@onready var clear_post = $ClearText;
@onready var add_post_template = $AddPostTemplate;

## Functional ======

@onready var import_text = $ImportText;
@onready var export_text = $ExportText;

## Send it ======

@onready var get_posts = $GetPosts;
@onready var edit_post = $EditPost;
@onready var post = $Post;


# Called when the node enters the scene tree for the first time.
func _ready():
	clear_post.pressed.connect(_on_clear_text_pressed);
	
	get_posts.pressed.connect(_on_get_posts_pressed);
	edit_post.pressed.connect(_on_edit_post_pressed);
	post.pressed.connect(_on_post_pressed);
	
	import_text.pressed.connect(_on_import_pressed);
	export_text.pressed.connect(_on_export_pressed);


func _on_get_posts_pressed():
	get_devlogs.emit();


func _on_edit_post_pressed():
	edit_curr_text.emit();


func _on_post_pressed():
	post_curr_text.emit();


func _on_import_pressed():
	import_file.emit();


func _on_export_pressed():
	export_file.emit();


func _on_clear_text_pressed():
	clear_text.emit();
