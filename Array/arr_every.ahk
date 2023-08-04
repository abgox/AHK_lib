/**
 * Check whether all the elements in the array match the callback function or not, and returns a boolean result.
 * @param {Array} arr
 * @param {Func} callback
 * @returns {Boolean} true/false
 * @example arr_every([1, 2, 3], v => v > 1) ; return false
 *  arr_every([1, 2, 3], v => v > 0) ; return true
 *  arr_every(['a', 'abc'], v => InStr(v,'a')) ; return true
 */
arr_every(arr, callback) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    } else if (Type(callback) != 'Func' || callback.MinParams != 1) {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a function with one parameter.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    for v in arr {
        if (!callback(v)) {
            return false
        }
    }
    return true
}
