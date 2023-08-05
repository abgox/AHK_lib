/**
 * Remove duplicate elements from the array, keeping only unique elements. The original array will not be modified.
 * @param {Array} arr
 * @returns {array} new array
 */
arr_uniqueArr(arr) {
    res := ""
    for i, v in arr {
        res .= i = arr.Length ? v : v ","
    }
    return StrSplit(Sort(res, "U D,"), ",")
}
