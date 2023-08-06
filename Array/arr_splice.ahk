/**
 * Remove/replace certain elements at a given index from an array.
 * @tip The original array will be modified.
 * @param {Array} arr
 * @param {Integer} start {@link https://github.com/abgox/AHK_lib#about-array|Why?(start >= 1)}
 * @param {Integer} deleteCount
 * @param {Any} items*
 * @example testArr := ['a', 'b', 'c','d']
 * arr_splice(testArr, 3, 0, 'cc')
 * ; testArr => ['a', 'b', 'cc', 'c', 'd']
 * arr_splice(testArr, 3, 1, 'dd')
 * ; testArr => ['a', 'b', 'dd', 'c', 'd']
 * arr_splice(testArr, 2, 4, 'ee')
 * ; testArr => ['a', 'ee']
 */
arr_splice(arr, start, deleteCount, items*) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    } else if (Type(start) != 'Integer') {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires an Integer, but received " Type(start) ".", -1)
    } else if (start < 1) {
        throw ValueError("Parameter #2 of function( " A_ThisFunc " ) requires an Positive Integer(>=1).`n          The starting index of the array is 1 instead of 0.", -1)
    } else if (deleteCount < 0) {
        throw ValueError("Parameter #3 of function( " A_ThisFunc " ) requires an Integer(>=0).", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    i := items.Length
    (start > 0) ? arr.RemoveAt(start, deleteCount) : ''
    while (i > 0) {
        arr.InsertAt(start, items[i])
        i--
    }
}
