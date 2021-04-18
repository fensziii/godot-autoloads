# setget Workaround for Godot 4


**Function**


**Die Funktion**

**LiveUpdater.run(**`node_name : 1`**, **`node_variant : 2`**, **`inspect_var : 3`**, **`run_event : 4`**, **`clear_event : 5`**)**
+ 1. unique name
+ 2. set a node
+ 3. your export var
+ 4. method to execute on `true`
+ 5. method to execute on `false`


**Example**

```
@tool
extends MeshInstance3D

@export var gen_terrain = false

func test_create():
    print_debug("Create Terrain")

func test_clear():
    print_debug("Clear Terrain")

func _process(delta):
    LiveUpdater.run("runeditor", self, gen_terrain, "test_create", "test_clear")

```


**License**

> MIT (see LICENSE file)
