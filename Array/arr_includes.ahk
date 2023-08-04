/**
 * Check whether an array contains the specified value or not, and returns a boolean result.
 * @param {Array} arr
 * @param {Any} searchElement
 * @param {Integer} start
 * @param {Integer} end {@link https://github.com/abgox/AHK_lib#about-array|Why?(end <= arr.Length + 1)}
 * @returns {Boolean} true/false
 * @example arr_includes(['a', 'b', 'c'], 'b', 1) ; return true
 *  arr_includes(['a', 'b', 'c'], 'c', -2) ; return true
 *  arr_includes(['a', 'b', 'c'], 'c', 1, 3) ; return false
 *  arr_includes(['a', 'b', 'c'], 'c', 1, 4) ; return true
 */
arr_includes(arr, searchElement, start := 1, end := arr.Length + 1) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    } else if (Type(start) != 'Integer') {
        throw TypeError("Parameter #3 of function( " A_ThisFunc " ) requires Integer, but received " Type(start) ".", -1)
    } else if (Type(start) != 'Integer') {
        throw TypeError("Parameter #3 of function( " A_ThisFunc " ) requires Integer, but received " Type(start) ".", -1)
    } else if (Type(end) != 'Integer') {
        throw TypeError("Parameter #4 of function( " A_ThisFunc " ) requires Integer, but received " Type(end) ".", -1)
    } else if (start = 0) {
        throw ValueError("Parameter #3 of function( " A_ThisFunc " ) cannot be 0.`n          The starting index of the array is 1 instead of 0.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    start := start < 0 ? start + arr.Length + 1 : start
    end := end < 0 ? end + arr.Length + 1 : end
    while (start < end) {
        if (arr[start] = searchElement) {
            return true
        }
        start++
    }
    return false
}
