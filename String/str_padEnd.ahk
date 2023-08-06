/**
 * pads the current string with another string until the resulting string reaches the given length, and return it.
 * The padding is applied from the end of the current string.
 * @tip The original string will not be modified.
 * @param {String} str
 * @param {Integer} maxLength
 * @param {String} fillString
 * @returns {String}
 * @example testStr := "hello"
 *  str_padEnd(testStr,8,"!") ; return "hello!!!"
 *  ; testStr => "hello"
 */
str_padEnd(str, maxLength, fillString) {
    ;@Ahk2Exe-IgnoreBegin
    if (Type(str) != 'String') {
        throw TypeError("Parameter #1 of function( " A_ThisFunc " ) requires a String, but received " Type(str) ".", -1)
    }
    ;@Ahk2Exe-IgnoreEnd

    while (StrLen(str) < maxLength) {
        str .= fillString
    }
    return str
}
