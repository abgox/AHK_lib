[![license](https://img.shields.io/github/license/abgox/AHK_lib)](https://github.com/abgox/AHK_lib/blob/main/LICENSE)
[![code size](https://img.shields.io/github/languages/code-size/abgox/AHK_lib.svg)](https://img.shields.io/github/languages/code-size/abgox/AHK_lib.svg)
[![repo size](https://img.shields.io/github/repo-size/abgox/AHK_lib.svg)](https://img.shields.io/github/repo-size/abgox/AHK_lib.svg)

<p align="left">
<a href="README.md">English</a> |
<a href="README-CN.md">简体中文</a> |
<a href="https://github.com/abgox/AHK_lib">Github</a> |
<a href="https://gitee.com/abgox/AHK_lib">Gitee</a>
</p>

## Tip

### About Array

1.  In `AutoHotkey`, the starting index of an array is `1`.
2.  To remain interval `[left,right)` ,The selection range of an array is `(1, Array's length + 1)`.
    -   `Array's length + 1` is used to select the last element.
    -   eg. `arr_slice(arr, start, end := arr.Length + 1)`
        -   `arr_slice([11, 22, 33, 44, 55 ], 3, 5)` => `[33, 44]`
        -   `arr_slice([11, 22, 33, 44, 55 ], 3)` => `[33, 44, 55]`
        -   `arr_slice([11, 22, 33, 44, 55 ], 3, 6)` => `[33, 44, 55]`
        -   `arr_slice([11, 22, 33, 44, 55 ], 1, -2)` => `[11, 22, 33]`

### About Parameter validation

-   eg. type,value checks...
-   Exists before compilation and is removed after compilation.(Compile by `Ahk2Exe.exe`)
