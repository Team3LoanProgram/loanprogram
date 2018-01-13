<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="../header.jsp" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷放款</title>
</head>
<body>
	<div style="margin:20px 0 10px 0;">
	</div>
	<div id="p" class="easyui-panel" title="查询条件" style="width:100%;font-weight:bold;">
		<span>合同编号</span><input class="easyui-textbox" data-options="prompt:'填写'" style="height:20px">
		<span>借款人</span><input class="easyui-textbox" data-options="prompt:'填写'" style="height:20px">
		<span>身份证号</span><input class="easyui-textbox" data-options="prompt:'填写'" style="height:20px"><br><br>
		<span>产品类型</span><input class="easyui-textbox" data-options="prompt:'填写'" style="height:20px">
		<span>分公司</span><input class="easyui-textbox" data-options="prompt:'填写'" style="height:20px">
		<span>放款状态</span><input class="easyui-textbox" data-options="prompt:'填写'" style="height:20px"><br><br>
		<button type="button" id="myButton" data-loading-text="Loading..." class="btn btn-primary" autocomplete="off" style="float:left;margin-left: 300px;">查&nbsp;&nbsp;询</button>
	</div>
<script>
  $('#myButton').on('click', function () {
    var $btn = $(this).button('loading')
    // business logic...
    $btn.button('reset')
  })
</script>
</body>
</html>