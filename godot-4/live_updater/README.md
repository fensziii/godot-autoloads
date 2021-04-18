# setget Workaround for Godot 4

**Use in Autoload** `Project > Project Settings > AutoLoad`

### Function

___

<br />

**LiveUpdater._run(_** **`node_name`**, **`node_variant`**, **`inspect_var`**, **`run_event`**, **`clear_event`** **_)_**

+ **node_name**     = unique name
+ **node_variant**  = set a node
+ **inspect_var**   = your export var
+ **run_event**     = method to execute on `true`
+ **clear_event**   = method to execute on `false`

<br />

___

<br />

**Example**

```gd
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

<br />

___

<br />

**License**

> MIT (see LICENSE file)
