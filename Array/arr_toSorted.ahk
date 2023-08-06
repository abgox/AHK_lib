/**
 * Sort an array in ascending(1) or descending(-1) order.
 * @tip The original array will not be modified.
 * @param {Array} arr
 * @param {Integer} order 1/-1
 * @returns {Array}
 * @example testArr := [6, 2, 11, 5]
 *  arr_toSorted(testArr, 1) ; return [2, 5, 6, 11]
 *  ; testArr => [6, 2, 11, 5]
 *  arr_toSorted(testArr, -1) ; return [11, 6, 5, 2]
 *  ; testArr => [6, 2, 11, 5]
 *  arr_toSorted([3, 1, 2]) ; return [1, 2, 3]
 */
arr_toSorted(arr, order := 1) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
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
