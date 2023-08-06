/**
 * Recursively concatenate all subarray elements into a new array based on the specified depth, and return it.
 * @tip The original array will not be modified.
 * @param {Array} arr
 * @param {Integer} depth
 * @returns {Array}
 * @example testArr := [1, [2, 3, [4, 5]]]
 *  arr_flat(testArr, 1) ; return [1, 2, 3, [4, 5]]
 *  ; testArr => [1, [2, 3, [4, 5]]]
 *  arr_flat(testArr, 2) ; return [1, 2, 3, 4, 5]
 *  ; testArr => [1, [2, 3, [4, 5]]]
 */
arr_flat(arr, depth := 1) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    } else if (Type(depth) != 'Integer') {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a Positive integer, but received " Type(depth) ".", -1)
    } else if (depth < 1) {
        throw ValueError("Parameter #2 of function( " A_ThisFunc " ) requires a Positive integer(>=1).", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    res := []
    _do(array, c_depth) {
        for v in array {
            if (Type(v) = 'Array' && c_depth <= depth) {
                _do(v, c_depth + 1)
            } else {
                res.Push(v)
            }
        }
    }
    _do(arr, 1)
    return res
}
