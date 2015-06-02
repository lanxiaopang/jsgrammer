function docondition(imgSizeType,imgType){
	
	
	if(imgSizeType == ''){
		
		document.getElementById("imgSizeType").value= "";
	} else
	if(imgSizeType){
		document.getElementById("imgSizeType").value=imgSizeType;
	}
	if(imgType){
		document.getElementById("imgType").value=imgType;
	} else
	if(imgType == ''){
		document.getElementById("imgType").value= "";
	}
//	var frm = document.searchForm;
//	frm.submit();
	$("#searchForm").submit();
}
$(document).ready(function(){
	
	var styleFilter = $("#styleFilter");//全部格式
	var sizeFilter=$("#sizeFilter");//全部尺寸
	var  showBtn =$("#showBtn");//展开按钮
	styleFilter.click( 
		function ()
		{ 
			$("#gschild").slideToggle("fast");//展开格式选择
			//$("#cc").toggle();
//			$("#All").click(
//			function()
//			{
//				$("#gschild > li").removeClass("selected");
//				$("#All").addClass("list-first-item selected");				
//			}
//			);
//			$("#S").click(
//			function()
//			{
//				$("#gschild > li").removeClass("selected");
//				$("#S").addClass("list-first-item selected");
//				
//				
//			}
//			);
//			$("#M").click(
//			function()
//			{
//				$("#gschild > li").removeClass("selected");
//				$("#M").addClass("list-first-item selected");
//				
//			}
//			);
			}
		);
//	//����������б���ʾ
	styleFilter.mouseover(//鼠标移动到格式选择上时渐变
	function()
	{
		$("#gschild").fadeIn(500);//显示格式
		$("#cc").fadeOut();//隐藏尺寸
	}
	);
////	//����ƿ��б���ʧ
//	styleFilter.mouseout(
//	function()
//	{
//		$("#gschild").fadeOut(1000);
//	}
//	);
	sizeFilter.click( 
		function ()
		{ 
			$("#cc").slideToggle("fast");//展开尺寸选择
			//$("#gschild").css("display","none");
//			$("#allcc").click(
//			function()
//			{
//				$("#cc > li").removeClass("selected");
//				$("#allcc").addClass("list-first-item selected");
//				
//			}
//			);
//			$("#big").click(
//			function()
//			{
//				$("#cc > li").removeClass("selected");
//				$("#big").addClass("list-first-item selected");
//				
//			}
//			);
//			$("#middle").click(
//			function()
//			{
//				$("#cc > li").removeClass("selected");
//				$("#middle").addClass("list-first-item selected");
//				
//			}
//			);
//			$("#small").click(
//			function()
//			{
//				$("#cc > li").removeClass("selected");
//				$("#small").addClass("list-first-item selected");
//				
//			}
//			);
			}
		);
	//�����������ʾ�б��¼�
	sizeFilter.mouseover( 
	function()
	{
	$("#cc").fadeIn();
	$("#gschild").fadeOut(500);
	}
	);
//	//����ƿ��б���ʧ
//	$(".subFilter").mouseout( 
//	function()
//	{
//		
//	$(".filter-item-con").fadeOut();	
//	}
//	);
	
	//������ŵ�����Ԫ��ʱɸѡ����div��ʧ
	$("#showbigdiv").mouseover(//加载更多图片渐变隐藏格式选择和尺寸选择
	function()
	{
		$("#gschild").fadeOut(1000);
		$("#cc").fadeOut(1000);
	}
	);
	showBtn.click(//点击展开按钮默认展开全部格式
	function()
	{
		$(".subFilter").toggle("fast");
	}
	);
});