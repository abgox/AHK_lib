/**
 * Check whether all the elements in the array match the callback function or not, and returns a boolean result.
 * @param {Array} arr
 * @param {Func} callback callback(element,index)
 * @returns {Boolean} true/false
 * @example arr_every([1, 2, 3], v => v > 1) ; return false
 *  arr_every(['a', 'b', 'c'], (v, i) => i > 0) ; return true
 *  arr_every(['a', 'abc'], v => InStr(v,'a')) ; return true
 */
arr_every(arr, callback) {
    params := callback.MinParams
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    } else if (Type(callback) != 'Func') {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a function, but received " Type(callback) ".", -1)
    } else if (params != 1 && params != 2) {
        throw ValueError("Parameter #2 of function( " A_ThisFunc " ) requires a function with one or two parameters.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    for i, v in arr {
        if (params = 1) {
            if (!callback(v)) {
                return false
            }
        } else {
            if (!callback(v, i)) {
                return false
            }
        }
    }
    return true
}
