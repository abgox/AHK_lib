/**
 * Create a new Array from a variable number of arguments, regardless of number or type of the arguments, and return it.
 * @param {Any} args*
 * @returns {Array}
 * @example arr_of(1, 'a', ['b', 'c'], { d: 'test' }) ; return [1, 'a', ['b'], 'c', { d:'test' }]
 */
arr_of(args*) => args
