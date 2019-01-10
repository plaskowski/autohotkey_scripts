var jQuery = $;
var editor = jQuery('.CodeMirror')[1];
var activeLine = jQuery(editor).find('.net-codemirror-lib-CodeMirror-Style-activeLine');
var activeLineNumber = activeLine.find('.CodeMirror-linenumber').text();
var filePath = document.URL.split('/\+/')[1].replace(/^\d+\/\d+(\.\.\d+)?\//, '');
var fullPath = filePath;
if (activeLineNumber) {
	fullPath += ":" + activeLineNumber;
}
/* alert(fullPath); */
window.location = "todo2://" + fullPath;