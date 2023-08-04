/**
 * Returns a new array obtained by slicing from start to end in arr (including start and excluding end). The original array will not be changed.
 * @param {Array} arr
 * @param {Integer} start
 * @param {Integer} end {@link https://github.com/abgox/AHK_lib#about-array|Why?(end <= arr.Length + 1)}
 * @returns {Array}
 * @example arr_slice([6,2,11,5],1) ; return [2,5,6,11]
 *  arr_sort([6,2,11,5],-1) ; return [11,6,5,2]
 */
arr_slice(arr, start, end := arr.Length + 1) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    } else if (Type(start) != 'Integer') {
        throw TypeError("Parameter #3 of function( " A_ThisFunc " ) requires Integer, but received " Type(start) ".", -1)
    } else if (Type(end) != 'Integer') {
        throw TypeError("Parameter #4 of function( " A_ThisFunc " ) requires Integer, but received " Type(end) ".", -1)
    } else if (start = 0) {
        throw ValueError("Parameter #3 of function( " A_ThisFunc " ) cannot be 0.`n          The starting index of the array is 1 instead of 0.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    res := []
    start := start < 0 ? start + arr.Length + 1 : start
    end := end < 0 ? end + arr.Length + 1 : end
    while (start < end) {
        res.Push(arr[start])
        start++
    }
    return res
}
