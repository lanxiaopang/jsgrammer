    var isshow1 = 0;
	var isshow2 = 0;
	function showDSInfo(){
		if(isshow1==0){
			document.getElementById('wsp_9954efc').style.display='';
			isshow1 = 1;
		}else{
			document.getElementById('wsp_9954efc').style.display='none';
			isshow1 = 0;
		}
		if(isshow2==1){
			document.getElementById('wsp_65c7c3f5').style.display='none';
			isshow2 = 0;
		}
    }
	function showTJInfo(){
		if(isshow2==0){
			document.getElementById('wsp_65c7c3f5').style.display='';
			isshow2 = 1;
		}else{
			document.getElementById('wsp_65c7c3f5').style.display='none';
			isshow2 = 0;
		}
		if(isshow1==1){
			document.getElementById('wsp_9954efc').style.display='none';
			isshow1 = 0;
		}
    }
	function search() {
		document.getElementById("aspnetForm").submit();
    }
	function setCk1(){
		document.getElementById('wsp_17c6ed17').checked=false;
		document.getElementById('wsp_39a987f9').checked=true;
	}
	function setCk2(){
		document.getElementById('wsp_39a987f9').checked=false;
		document.getElementById('wsp_17c6ed17').checked=true;
	}
	function setCk3(){
		document.getElementById('wsp_1ebebf5c').checked=false;
		document.getElementById('wsp_71fbe97c').checked=true;
	}
	function setCk4(){
		document.getElementById('wsp_71fbe97c').checked=false;
		document.getElementById('wsp_1ebebf5c').checked=true;
	}
	function init(){
		if(document.getElementById('wsp_7d1752af').value!=""){
			document.getElementById('wsp_7d1752af').className='search-textbox2';
		}
	}
	function initSY(obj){
		if(obj.value==''){
			obj.className='search-textbox1';
		}else{
			obj.className='search-textbox2';
		}
	}
	function lookOrHideHis(obj){
		if(ifShowHis){
			//closeHisSearch();
			ifShowHis = false;
			$(obj).attr("src",contPath+"/images/arrow_2.gif");
			
		}else{
			//lookSearchHis();
			ifShowHis = true;
			$(obj).attr("src",contPath+"/images/arrow_3.gif");
		}
	}
	
	function lookSearchHis(){
		var commdUrls = contPath+"/q/getQueryWord/" + sfzh;
		var pauseData = jqAjax({
			url : commdUrls
		});
		var list = pauseData.list;
		if(list!=null&&list!=undefined&&list.length>0){
			
			$('#advancedsearchDiv').show();
			var bb = $('#lookHisDiv');
			var html = "<table border=0 cellspacing='0' cellpadding='2' width='494'>";
			for(var i=0;i<list.length;i++){
				html = html + "<tr class='table_style1' onmouseover='trMouseOver(this)' onmouseout='trMouseOut(this)' ><td onclick='clickWords(this)'>" + list[i].WORD + "</td></tr>";
			}
			html = html + "</table>";
			bb.html(html);
			
			bb.show();
		}
	}
	
	function closeHisSearch(){
		$('#advancedsearchDiv').hide();
	}
	function bodyHideHis(){
		if(ifShowHis){
			closeHisSearch();
			ifShowHis = false;
		}
	}
	function clickWords(obj){
		var str = obj.innerHTML;
		$('#query').val(str);
		closeHisSearch();
		ifShowHis = false;
	}
	function trMouseOver(obj){
		$(obj).css('background-color','#eaeaea');
	}
	function trMouseOut(obj){
		$(obj).css('background-color','#FFFFFF');
	}