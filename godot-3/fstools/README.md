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
> Example return: [ [ "res://directory1", "res://directory2" ], [ "res://file1.ext", "res://file2.ext" ] ]

**input example**

+ example 1
> res://

+ example 2
> res://myfolder

<br />

___

<br />

**License**

> MIT (see LICENSE file)
