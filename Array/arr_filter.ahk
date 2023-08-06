/**
 * Return a new array containing all values that match the callback function.
 * @tip  The original array will not be modified.
 * @param {Array} arr
 * @param {Func} callback callback(element,index)
 * @returns {Array}
 * @example testArr := [1, 2, 3]
 *  arr_filter(testArr, v => v > 1) ; return [2,3]
 *  ; testArr => [1, 2, 3]
 *  arr_filter(testArr, v => v > 3) ; return []
 *  ; testArr => [1, 2, 3]
 *  arr_filter(['a', 'aa', 'c'], v => InStr(v,'a')) ; return ['a','aa']
 */
arr_filter(arr, callback) {
    params := callback.MinParams, res := []
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    } else if (Type(callback) != 'Func') {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a function, but received " Type(callback) ".", -1)
    } else if (params != 1 && params != 2) {
        throw ValueError("Parameter #2 of function( " A_ThisFunc " ) requires a function with one or two parameters.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    for i, v in arr {
        if (params = 1) {
            if (callback(v)) {
                res.Push(v)
            }
        } else {
            if (callback(v, i)) {
                res.Push(v)
            }
        }
    }
    return res
}
