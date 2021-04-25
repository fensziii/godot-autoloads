extends Node

func formatBytes(bytes, decis = 0.01):
    var units = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB']
    if bytes == 0:
    	return "0 Bytes"
    var kilo = 1024
    var i = floor(log(bytes) / log(kilo));
    return str(stepify(bytes / pow(kilo, i), decis)) + ' ' + units[i];

func check_path_type(path):
    if File.new().file_exists(path):
    	return 1
    if Directory.new().dir_exists(path):
    	return 2
    return 0

func readdir_recursive(rootPath: String):
    var files  = []
    var direcs = []
    var dir    = Directory.new()
    if dir.open(rootPath) == OK:
    	dir.list_dir_begin(true, false)
    	_readdirrecursive(dir, files, direcs)
    return [direcs, files]

# This function is a part of "readdir_recursive()"
func _readdirrecursive(dir : Directory, files = [], direcs = []):
    var fname = dir.get_next()
    while (fname != ""):
    	var path  = dir.get_current_dir() + "/" + fname
    	if dir.current_is_dir():
    		direcs.append(path)
    		var sdir = Directory.new()
    		sdir.open(path)
    		sdir.list_dir_begin(true, false)
    		_readdirrecursive(sdir, files, direcs)
    	else:
    		files.append(path)
    	fname = dir.get_next()
    dir.list_dir_end()
