extends Node

func ms2Time(s):
    var ms = s % 1000
    s = (s - ms) / 1000
    var se = s % 60
    s = (s - se) / 60
    var mi = s % 60
    var hr = (s - mi) / 60
    return str(hr).pad_zeros(2) + ":" + str(mi).pad_zeros(2) + ":" + str(se).pad_zeros(2) + "." + str(ms).pad_zeros(3)

func formatBytes(bytes, decis = 0.01):
    var units = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB']
    if bytes == 0:
    	return "0 Bytes"
    var kilo = 1024
    var i = floor(log(bytes) / log(kilo));
    return str(stepify(bytes / pow(kilo, i), decis)) + ' ' + units[i];
