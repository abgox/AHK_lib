/**
 * Return the value of the first element in the array that match the callback function, otherwise return ""
 * @param {Array} arr
 * @param {Func} callback
 * @param {Integer} start
 * @param {Integer} end {@link https://github.com/abgox/AHK_lib#about-array|Why?(end <= arr.Length + 1)}
 * @return value/""
 * @example arr_find([4, 5, 6], v => v > 6) ; return ""
 *  arr_find([4, 5, 6], v => v > 5, -2) ; return 6
 *  arr_find([4, 5, 6], v => v > 5, 1, 3) ; return ""
 *  arr_find([4, 5, 6], v => v > 5, 1, 4) ; return 6
 *  arr_find(['aa', 'cc', 'ccc'], v => InStr(v,'c')) ; return 'cc'
 */
arr_find(arr, callback, start := 1, end := arr.Length + 1) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    } else if (Type(callback) != 'Func' || callback.MinParams != 1) {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a function with one parameter.", -1)
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
        if (callback(arr[start])) {
            return arr[start]
        }
        start++
    }
    return ""
}
