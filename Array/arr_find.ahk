/**
 * Return the value of the first element in the array that match the callback function, otherwise return ""
 * @param {Array} arr
 * @param {Func} callback callback(element,index)
 * @return value/""
 * @example arr_find([4, 5, 6], v => v > 6) ; return ""
 *  arr_find([4, 5, 6], (v, i) => i > 1) ; return 5
 *  arr_find(['aa', 'cc', 'ccc'], v => InStr(v,'c')) ; return 'cc'
 */
arr_find(arr, callback) {
    params := callback.MinParams
    ;@Ahk2Exe-IgnoreBegin
    if (Type(arr) != 'Array') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires an Array, but received " Type(arr) ".", -1)
    }else if (Type(callback) != 'Func') {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a function, but received " Type(callback) ".", -1)
    } else if (params != 1 && params != 2) {
        throw ValueError("Parameter #2 of function( " A_ThisFunc " ) requires a function with one or two parameters.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    for i, v in arr {
        if (params = 1) {
            if (callback(v)) {
                return v
            }
        } else {
            if (callback(v, i)) {
                return v
            }
        }
    }
    return ""
}
