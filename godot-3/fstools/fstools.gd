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
