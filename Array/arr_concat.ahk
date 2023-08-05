/**
 * Merge two or more arrays. It can also merge other types of values.
 * @param {Any} items*
 * @returns {Array}
 * @example arr_concat([1, 2], ['a', 'b']) ; return [1, 2, 'a', 'b']
 *  arr_concat([1, [2, 3]], 'a', { b: 'c' }) ; return [1, [2, 3], 'a', { b: 'c' }]
 */
arr_concat(items*) {
    res := []
    for v in items {
        if (Type(v) = 'Array') {
            for i in v {
                res.Push(i)
            }
        } else {
            res.push(v)
        }
    }
    return res
}
