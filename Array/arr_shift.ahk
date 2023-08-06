/**
 * Remove the first element from the array, and return it.
 * @tip The original array will be modified.
 * @param {Array} arr
 * @returns {Any} The element that was removed
 * @example testArr := ['aa', 'bb', 1, 2]
 *  arr_shift(testArr) ; return 'aa'
 *  ; testArr => ['bb', 1, 2]
 */
arr_shift(arr) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    return arr.RemoveAt(1)
}
