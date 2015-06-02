/**
 * 此类库依赖 jquery-1.4.2
 */

/**
 * 页面中必须定义contextPath
 * @param sql
 * @return
 */
//function queryData(sql) {
//	var rs = [];
//	$.ajaxSetup({ifModified:false,async: false});
//	$.getJSON(contextPath + '/jsp/jzgc/se/js/pubjson.jsp',
//			{'q_sql_for_json' : encodeURIComponent(sql)},
//			function(data){
//				rs = data;
//			})
//	//$.ajaxSetup({ifModified:false,async: true});
//	return rs;
//}

/**
 * 同步方法
 * @param params {}， 内容 url ： 要请求的url； data : url参数
 */
function jqAjax(params) {
	var dataText = $.ajax({
		  url: params.url,
		  dataType: "text",
		  cache: false,
		  data: params.data,
		  async: false
		 }).responseText;
	return eval("(" + dataText + ")");
}
function jqNoArrayAjax(params) {
	var dataText = $.ajax({
		  url: params.url,
		  dataType: "text",
		  cache: false,
		  data: params.data,
		  async: false
		 }).responseText;
	return dataText;
}


/**
 * 异步
 * @param params {}， 内容 url ： 要请求的url； data : url参数； success : 回调方法
 */
function jqAjaxSync(params) {
	$.ajax({
		  url: params.url,
		  dataType: "text",
		  cache: false,
		  data: params.data,
		  async: true,
		  success : function(data) {
			var _data = eval("(" + data + ")");;
			params.success(_data);
		}
	})
}
/**
 * 通过grid的name获取对应的grid列号
 * @param columnName
 * @param gridProperty
 * @param rowNum
 * @return
 */

function getColumnNum(columnName, gridProperty, rowNum) {
	// columnName)
	var sp = $("[name='" + gridProperty + "[" + (rowNum - 1) + "]."
			+ columnName + "']")
	var spel = sp.get(0)

	var colIndex = 0;
	var coltd = $(spel).parents("td:first").get(0)
	$(spel).parents("tr:first").children("td").each(function(index) {
		if (this == coltd) {
			colIndex = index;
		}
	});
	return colIndex;
}