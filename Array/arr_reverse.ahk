/**
 * Reverses the order of elements in an array.
 * @tip The original array will be modified.
 * @param {Array} arr
 * @returns {Array}
 * @example testArr := ['aa', 'bb', 1, 2]
 *  arr_reverse(testArr) ; return [2, 1, 'bb', 'aa']
 *  ; testArr => [2, 1, 'bb', 'aa']
 */
arr_reverse(arr) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    left := 1, right := arr.Length
    while (left < right) {
        temp := arr[left],
        arr[left] := arr[right],
        arr[right] := temp,
        left++, right--
    }
    return arr
}
