/**
 * Add the specified element to the beginning of the array and return the new length of the array.
 * @tip The original array will be modified.
 * @param {Array} arr
 * @param {Any} items*
 * @return {Integer} arr.Length
 * @example testArr := ['aa', 'bb', 1, 2]
 *  arr_unshift(testArr, 'a', 'b') ; return 6
 *  ; testArr => ['a', 'b', 'aa', 'bb', 1, 2]
 */
arr_unshift(arr, items*) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    i := items.Length
    while (i > 0) {
        arr.InsertAt(1, items[i])
        i--
    }
    return arr.Length
}
