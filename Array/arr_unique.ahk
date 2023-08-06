/**
 * Remove duplicate elements from the array, keeping only unique elements.()
 * @warning  It work with arrays containing only strings or numbers as elements.
 * @tip The original array will not be modified.
 * @param {Array} arr
 * @returns {Array}
 * @example testArr := ['a', 'b', 'a', 1, 2, 1, 2]
 * arr_unique(testArr, 3, 0, 'cc') ; return  ['a', 'b', 'cc', 'c', 'd']
 * ; testArr => ['a', 'b', 'c','d']
 * arr_unique(testArr, 3, 1, 'dd') ; return ['a', 'b', 'dd', 'c', 'd']
 * ; testArr => ['a', 'b', 'c','d']
 * arr_unique(testArr, 2, 4, 'ee') ; return ['a', 'ee']
 * ; testArr => ['a', 'b', 'c','d']
 */
arr_unique(arr) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    res := ""
    for i, v in arr {
        res .= i = arr.Length ? v : v ","
    }
    return StrSplit(Sort(res, "U D,"), ",")
}
