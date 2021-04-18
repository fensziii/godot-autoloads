# Code Based Timer for Godot 3


> realtimer.gd
```
extends Node

var times = []

func set_timer(node, method, arg, time):
    times.push_back([node, method, time, 0, arg])

func _process(delta):
    for i in range(times.size()):
        if range(times.size()).has(i):
            var itm = times[i]
            itm[3] += delta
            if itm[3] > itm[2]:
                itm[0].call(itm[1], itm[4])
                times.remove(i)
```

**Die Funktion**

**Realtimer.set_timer(`self = Node`, `"methode_wenn_timer_fertig" = Method`, `time_1 = Argument`, `1.0 = Time in Seconds`)**


**Beispiel**

```
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
        Realtimer.set_timer(self, "methode_wenn_timer_fertig", time_1, 1.0) # <==== Timer Starten

func methode_wenn_timer_fertig(time_1):
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
