extends Node



func formatBytes(bytes, decis = 0.01):
	var units = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB']
	if bytes == 0:
		return "0 Bytes"
	var kilo = 1024
	var i = floor(log(bytes) / log(kilo));
	return str(stepify(bytes / pow(kilo, i), decis)) + ' ' + units[i];



func load_file(path, fallback):
	if check_path_type(path) == 1:
		return load(path)
	return load(fallback)


func get_folder_size(path, depth):
	var temp  = 0
	var lists = readdir_recursive(path, depth)
	for list in lists:
		for item in list:
			if check_path_type(item) == 1:
				temp += get_file_size(item)
	return temp


func get_file_size(path):
	var file = File.new()
	file.open(path, File.READ)
	var temp = (file.get_len() if file.is_open() else 0)
	file.close()
	return temp



func check_path_type(path):
	if File.new().file_exists(path):
		return 1
	if Directory.new().dir_exists(path):
		return 2
	return 0



func readdir_recursive(rootPath: String, depth : int):
	var files       = []
	var direcs      = []
	var depth_count = 0
	var backup_path = rootPath
	var dir    = Directory.new()
	if dir.open(rootPath) == OK:
		dir.list_dir_begin(true, false)
		_readdirrecursive(dir, depth_count, backup_path, depth, files, direcs)
	return [direcs, files]



# This function is a part of "readdir_recursive()"
func _readdirrecursive(dir : Directory, depth_count = 0, backup_path = "", depth = 0, files = [], direcs = []):
	var fname = dir.get_next()
	while (fname != ""):
		var path       = dir.get_current_dir() + "/" + fname
		var depth_curr = _clear_values(path.replace(backup_path, "").split("/")).size()
		if dir.current_is_dir() and depth_curr <= depth:
			direcs.append(path)
			var sdir = Directory.new()
			sdir.open(path)
			sdir.list_dir_begin(true, false)
			depth_count += 1
			_readdirrecursive(sdir, depth_count, backup_path, depth, files, direcs)
		if not dir.current_is_dir() and depth_curr <= depth:
			files.append(path)
		fname = dir.get_next()
	dir.list_dir_end()



# This function is a part of "_readdirrecursive()"
func _clear_values(arr : Array):
	var fix = []
	for n in arr:
		if n != "":
			fix.append(n)
	return fix
