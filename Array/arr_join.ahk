/**
 * Concatenate all elements of an array into a string, separated by commas or a specified delimiter string, and return it.
 * @param {Array} arr
 * @param {Any} separator
 * @returns {string}
 * @example arr_join(['a','b','c']) ; return "a,b,c"
 *  arr_join(['a','b','c'],'-') ; return "a-b-c"
 */
arr_join(arr, separator := ",") {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    res := ""
    for i, v in arr {
        res .= i = arr.Length ? v : v separator
    }
    return res
}
