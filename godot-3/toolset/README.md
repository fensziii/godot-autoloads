# Toolset for Godot 3

**Use in Autoload** `Project > Project Settings > AutoLoad`

<br />

### Function

___

<br />

### **Toolset._ms2Time(_`milliseconds`_)_**

+ **milliseconds** = milliseconds ( `OS.get_system_time_msecs()` )

**return `string`**
> Example return: 00:09:06.546  # ( 0 hrs, 9 min, 6 sec, 546 ms)

<br />

### **Toolset._formatBytes(_`bytes`_)_**

+ **bytes** = bytes as `int`

**return `string`**
> Example return: 62.14 MB

<br />

### **Toolset._formatBytes(_`bytes`_)_**

+ **bytes** = bytes as `int`

**return `string`**
> Example return: 62.14 MB

<br />

### **Toolset._regexp_str(_`string`__,__` regexp_str`_)_**

+ **string** = string to search
+ **regexp_str** = RegEx expression

**return `bool`**
> Example return: true or false

<br />

### **Toolset._search_str(_`search`__,__` findme`__,__` output`_)_**

+ **search** = contains your main `string`
+ **findme** = contains the word as `string` to find
+ **output** = contains a `bool` to change output `true` = `bool`, `false` = `string`

**return `string` or `bool`**

**output example `string`**
> Example return: "MyWord"

**output example `bool`**
> Example return: **false** or **true**

<br />

### **Toolset._clear_array_values(_`array`_)_**

+ **array** = to clean empty values

**return `array`**

**input example**
> Example Input: ["", "abc", "123"]

**output example**
> Example Output: ["abc", "123"]

<br />

### **Toolset._check_path_type(_`path`_)_**

+ **path** = contains the path of **file** or **folder** as `string`

**return `int`**
+ **0** fallback
+ **1** is file and exists
+ **2** is folder and exists

<br />

___

<br />

**License**

> MIT (see LICENSE file)
