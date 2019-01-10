var jQuery = $;
var editor = jQuery('.CodeMirror')[1];
var activeLine = jQuery(editor).find('.net-codemirror-lib-CodeMirror-Style-activeLine');
var activeLineNumber = activeLine.find('.CodeMirror-linenumber').text();
var filePath = document.URL.split('#/c/')[1].replace(/^\d+\/\d+(\.\.\d+)?\//, '');
var fullPath = filePath + ":" + activeLineNumber;
/* alert(fullPath); */
var bottomBar = $("#gerrit_btmmenu");
var outLink = bottomBar.find('a#bookmarklet_outLink');
if (outLink.length == 0) {
    outLink = $('<a id="bookmarklet_outLink">outLink</a>');
    outLink.appendTo(bottomBar);
}
outLink.attr('href', '/' + fullPath);
