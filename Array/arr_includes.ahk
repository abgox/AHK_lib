/**
 * Check whether an array contains the specified value or not, and returns a boolean result.
 * @param {Array} arr
 * @param {Any} searchElement
 * @returns {Boolean} true/false
 * @example arr_includes(['a', 'b', 'c'], 'b') ; return true
 *  arr_includes(['a', 'b', 'c'], 'd') ; return false
 */
arr_includes(arr, searchElement) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    for v in arr {
        if (v = searchElement) {
            return true
        }
    }
    return false
}
