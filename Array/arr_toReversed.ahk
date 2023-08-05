/**
 * Reverses the order of elements in an array, and the original array will be modified.
 * @param {Array} arr
 * @returns {Array} new array
 * @example a := ['aa', 'bb', 1, 2]
 *  arr_toReversed(a) ; return [2, 1, 'bb', 'aa']
 *  ; a => ['aa', 'bb', 1, 2]
 */
arr_toReversed(arr) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    left := 1, right := arr.Length, res := arr.Clone()
    while (left < right) {
        temp := res[left],
        res[left] := res[right],
        res[right] := temp,
        left++, right--
    }
    return res
}
