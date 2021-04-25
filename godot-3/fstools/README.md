# FSTools for Godot 3

**Use in Autoload** `Project > Project Settings > AutoLoad`


**Info**
> This is a toolset for the FileSystem

<br />

### Functions

___

<br />

### **FSTools._formatBytes(_`bytes`_)_**

+ **bytes** = bytes as `int`

**return `string`**
> Example return: 62.14 MB

<br />

### **FSTools._load_file(_`path`_,_`fallback`_)_**

+ **path** = path to file
+ **fallback** = path to file (main path not exists)

**return `file`**

<br />

### **FSTools._get_file_size(_`path`_)_**

+ **path** = path to file

**return `int`**
> Example return: 1565

<br />

### **FSTools._check_path_type(_`path`_)_**

+ **path** = contains the path of **file** or **folder** as `string`

**return `int`**
+ **0** fallback
+ **1** is file and exists
+ **2** is folder and exists

**input example**
> res://icon.png

**output example**
> **1**

<br />

### **FSTools._readdir_recursive(_`path`_)_**

+ **path** = to read directory recursively

**return `array`**
> Example return: [ [ "res://directory1", "res://directory2" ], [ "res://file1.ext", "res://directory1/file2.ext" ] ]

**input example**

+ example 1
> res://

+ example 2
> res://myfolder

<br />

___

**TODO**

+ **[FSTools.readdir_recursive]** add read depth
___

<br />

**License**

> MIT (see LICENSE file)
