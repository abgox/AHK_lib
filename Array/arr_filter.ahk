/**
 * Return a new array containing all values that match the callback function.
 * @param {Array} arr
 * @param {Func} callback
 * @returns {Array}
 * @example arr_filter([1, 2, 3], v => v > 1) ; return [2,3]
 *  arr_filter([1, 2, 3], v => v > 3) ; return []
 *  arr_filter(['a', 'aa', 'c'], v => InStr(v,'a')) ; return ['a','aa']
 */
arr_filter(arr, callback) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    } else if (Type(callback) != 'Func') {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a function, but received " Type(callback) ".", -1)
    } else if (callback.MinParams != 1) {
        throw ValueError("Parameter #2 of function( " A_ThisFunc " ) requires a function with one parameter.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    res := []
    for v in arr {
        if (callback(v)) {
            res.Push(v)
        }
    }
    return res
}
