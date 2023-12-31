/**
 * Check whether the given parameter is an array or not, and returns a boolean result.
 * @param {Any} item
 * @returns {Boolean} true/false
 * @example arr_isArray([]) ; return true
 *  arr_isArray('abc') ; return false
 */
arr_isArray(item) => Type(item) = 'Array' ? true : false
