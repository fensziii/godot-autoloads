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

func regexp_str(string : String, regexp_str : String):
    var regex = RegEx.new()
    regex.compile(regexp_str)
    var result = regex.search(string)
    if result:
    	return true
    return false

func search_str(search : String, findme : String, output : bool = false):
    var pos = search.find(findme, 0)
    var sti = search.substr(pos, findme.length())
    if sti.length() > 0:
    	return (sti if output else true)
    return (sti if output else false)

func clear_array_values(arr : Array):
    var fix = []
    for n in arr:
    	if n != "":
    		fix.append(n)
    return fix

func check_path_type(path):
    if File.new().file_exists(path):
    	return 1
    if Directory.new().dir_exists(path):
    	return 2
    return 0
