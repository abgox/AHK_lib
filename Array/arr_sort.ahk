/**
 * Sort an array in ascending(1) or descending(-1) order
 * @param {Array} arr
 * @param {Integer} order 1/-1
 * @returns {Array}
 * @example arr_sort([6, 2, 11, 5], 1) ; return [2, 5, 6, 11]
 *  arr_sort([6, 2, 11, 5], -1) ; return [11, 6, 5, 2]
 */
arr_sort(arr, order := 1) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    } else if (order != 1 && order != -1) {
        throw ValueError("Parameter #2 of function( " A_ThisFunc " ) can only be 1 or -1.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    res := ""
    for i, v in arr {
        res .= i = arr.Length ? v : v ","
    }
    return order = 1 ? StrSplit(Sort(res, "N D,"), ",") : StrSplit(Sort(res, "N R D,"), ",")
}
