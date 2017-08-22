/**
 * javascript base
 * 
 * create by jhone
 */


// 函数式
function $(id) {
	return document.getElementById(id);
}
// 对象式
var base = {
	$ : function(id) {
		return document.getElementById(id)
	},
	$$ : function(id) {
		return document.getElementByName(name)
	},
	$$$ : function(id) {
		return document.getElementsByTagName(tag);
	}
};
