/**
 * Remove the first element from the array, and return it.The original array will be modified.
 * @param {Array} arr
 * @returns {Any} The element that was removed
 * @example a := ['aa', 'bb', 1, 2]
 *  arr_shift(a) ; return 'aa'
 *  ; a => ['bb', 1, 2]
 */
arr_shift(arr) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    return arr.RemoveAt(1)
}
