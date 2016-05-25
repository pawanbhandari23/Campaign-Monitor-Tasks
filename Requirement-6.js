String.prototype.stripHtml = function(input) {
    return input.replace(/<(?:.|\n)*?>/gm, '');
};