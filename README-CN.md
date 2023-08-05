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

### 关于数组

1.  `AutoHotkey` 中的数组的起始索引为 **1**
2.  为保持与大多数语言一致的`[左,右)`的区间选择原则,数组选择范围为`(1, 数组长度 + 1)`
    -   `数组长度 + 1` 是为了能够选中最后一个元素
    -   eg. `arr_slice(arr, start, end := arr.Length + 1)`
        -   `arr_slice([11, 22, 33, 44, 55 ], 3, 5)` => `[33, 44]`
        -   `arr_slice([11, 22, 33, 44, 55 ], 3)` => `[33, 44, 55]`
        -   `arr_slice([11, 22, 33, 44, 55 ], 3, 6)` => `[33, 44, 55]`
        -   `arr_slice([11, 22, 33, 44, 55 ], 1, -2)` => `[11, 22, 33]`

### 关于参数校验

-   如：值、类型校验...
-   编译前存在，编译后移除(由`AhkExe.exe`编译)
