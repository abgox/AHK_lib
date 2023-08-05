/**
 * Reverse Iteration Array, and return the value of the first element in the array that match the callback function, otherwise return ""
 * @param {Array} arr
 * @param {Func} callback callback(element,index)
 * @returns value / ""
 * @example arr_findLast([4, 5, 6], v => v > 6) ; return ""
 *  arr_findLast([4, 5, 6], (v, i) => i > 1) ; return 6
 *  arr_findLast(['aa', 'cc', 'ccc'], v => InStr(v,'c')) ; return 'ccc'
 */
arr_findLast(arr, callback) {
    i := arr.Length, params := callback.MinParams
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    } else if (Type(callback) != 'Func') {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a function, but received " Type(callback) ".", -1)
    } else if (params != 1 && params != 2) {
        throw ValueError("Parameter #2 of function( " A_ThisFunc " ) requires a function with one or two parameters.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    while (i > 0) {
        if (params = 1) {
            if (callback(arr[i])) {
                return arr[i]
            }
        } else {
            if (callback(arr[i], i)) {
                return arr[i]
            }
        }
        i--
    }
    return ""
}
