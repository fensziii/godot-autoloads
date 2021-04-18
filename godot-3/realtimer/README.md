# Code Based Timer for Godot 3


**Funktion**


**Realtimer._set_timer(_`node`, `method`, `arg`, `time`_)_**

+ **node** = Set a Node
+ **method** = method of Node
+ **arg** = Set a Argument for the method
+ **time** = Set time in Seconds

**Example**

```gd
extends Node

func ms2Time(s):
    var ms = s % 1000
    s = (s - ms) / 1000
    var se = s % 60
    s = (s - se) / 60
    var mi = s % 60
    var hr = (s - mi) / 60
    return str(hr).pad_zeros(2) + ":" + str(mi).pad_zeros(2) + ":" + str(se).pad_zeros(2) + "." + str(ms).pad_zeros(3)

func _input(event: InputEvent) -> void:
    if Input.is_key_pressed(KEY_L):
        var time_1 = OS.get_system_time_msecs()
        Realtimer.set_timer(self, "my_custom_method", time_1, 1.0) # <==== Run Timer

func my_custom_method(time_1):
    var time_2 = OS.get_system_time_msecs()
    var timeFormat = ms2Time(time_2 - time_1)
    print(timeFormat)

```

> Starte das Spiel und klicke die Taste **L** 3x

**Beispiel Output**

```
00:00:00.998
00:00:01.000
00:00:01.001
```
