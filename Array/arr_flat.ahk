/**
 * Recursively concatenate all subarray elements into a new array based on the specified depth, and return it.
 * @param {Array} arr
 * @param {Integer} depth
 * @returns {Array}
 * @example arr_flat([1, [2, 3, [4, 5]]], 1) ; return [1, 2, 3, [4, 5]]
 *  arr_flat([1, [2, 3, [4, 5]]], 2) ; return [1, 2, 3, 4, 5]
 */
arr_flat(arr, depth := 1) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires Array, but received " Type(arr) ".", -1)
    } else if (Type(depth) != 'Integer' || depth < 1) {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a Positive integer(>=1).", -1)
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
