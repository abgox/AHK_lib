/**
 * Determines whether a string begins with the characters of a specified string, and returns a boolean result.
 * @param {String} str
 * @param {String} needStr
 * @param {Integer} start
 * @returns {Boolean} true/false
 * @example str_startsWith("hello", "e", 1) ; return false
 *  str_startsWith("hello", "lo", -2) ; return true
 */
str_startsWith(str, needStr, start := 1) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(str) != 'String') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires a String, but received " Type(str) ".", -1)
    } else if (Type(needStr) != 'String') {
        throw TypeError("Parameter #2 of function( " A_ThisFunc " ) requires a String, but received " Type(needStr) ".", -1)
    } else if (start = 0) {
        throw ValueError("Parameter #3 of function( " A_ThisFunc " ) cannot be 0.", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    return needStr = SubStr(str, start, StrLen(needStr))
}
