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
