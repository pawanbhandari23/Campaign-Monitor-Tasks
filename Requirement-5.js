String.prototype.startsWith = function(passed) {
    return text.slice(0, passed.length) === passed
};
String.prototype.endsWith = function(passed) {
    return text.indexOf(passed, text.length - passed.length) !== -1;
};