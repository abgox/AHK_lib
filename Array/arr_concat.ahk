/**
 * Merge two or more arrays. It can also merge other types of values.
 * @param {Any} args*
 * @returns {Array}
 * @example arr_concat([1, 2], ['a', 'b']) ; return [1, 2, 'a', 'b']
 *  arr_concat([1, [2, 3]], 'a', { b: 'c' }) ; return [1, [2, 3], 'a', { b: 'c' }]
 */
arr_concat(args*) {
    res := []
    for v in args {
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
