<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css"
	href="static/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="static/easyui/themes/icon.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="static/easyui/jquery.easyui.min.js"></script>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="static/js/bootstrap.min.js"></script>
<title>车贷放款详细信息</title>
<style>
   table{
       cellspacing="0";
       background-color:#dfe2e2;
       margin-bottom:10px;
       
   }
   tr{
     width:100%;
     height:30px;
   }
   td{
      width:300px;
      height:30px;
   }
   caption{
     background-color:#cedcde;
      line-height:30px;
   }
   select{
      width:146px;
   }
   
</style>
</head>
<body>
    <div class="easyui-panel" style="width:100%;text-align:center">
        <form id="vehicleInfo" method="post">
           <table border="1">
           <caption>个人基本信息</caption>
           <tr>
               <td><label>申请人姓名</label></td>
               <td><input type="text"></td>
               <td><label>身份证号码</label></td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>最高学历</label></td>
               <td><input type="text"></td>
               <td><label>申请人手机号码</label></td>
               <td><input type="text"></td>
           </tr>
           <tr>
               <td><label>户籍地址</label></td>
               <td><input type="text"></td>
               <td><label>申请人电话号码</label></td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>婚姻状态</label></td>
               <td><input type="text"></td>
               <td><label>有无子女</label></td>
               <td><input type="text"></td>
           </tr>
           <tr>
               <td><label>房产状态</label></td>
               <td><input type="text"></td>
               <td><label>共同居住者</label></td>
               <td>
               <select id="partner" name="partners">
                  <option value="0">配偶及其子女</option>
               </select>
           </tr>
            <tr>
               <td><label>现住址</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td><label>客户类型</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           </table>
           
           <table border="1">
           <caption>工作信息</caption>
           <tr>
               <td><label>工作单位全称</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
            <tr>
               <td><label>工作单位地址</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td><label>单位电话</label></td>
               <td><input type="text"></td>
               <td><label>邮政编码</label></td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>进入该单位时间</label></td>
               <td><input type="text"></td>
               <td><label>所在部门</label></td>
               <td><input type="text"></td>
           </tr>
           <tr>
               <td><label>担任职务</label></td>
               <td><input type="text"></td>
               <td><label>公司规模</label></td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>行业类别</label></td>
               <td><input type="text"></td>
               <td><label>单位性质</label></td>
               <td><select id="property" name="unit">
                  <option value="0">个体户</option>
               </select>
               </td>
           </tr>
           </table>
           
            <table border="1">
           <caption>资产信息</caption>
           <tr>
               <td><label>有无房产</label></td>
               <td><input type="text"></td>
               <td>有无房贷</td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>有无车产</label></td>
               <td><input type="text"></td>
               <td>有无车贷</td>
               <td><input type="text"></td>
           </tr>
           </table>
           
             <table border="1">
           <caption>信用信息</caption>
           <tr>
               <td><label>信用卡、贷款最大逾期状况（24个月内）</label></td>
               <td><input type="text"></td>
               <td>信用卡、贷款累计逾期状况（24个月内）</td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>信用卡额度使用率</label></td>
               <td><input type="text"></td>
               <td>信用卡、贷款审批查询次数（6个月内）</td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>有无其他信用贷款</label></td>
               <td><input type="text"></td>
               <td>有无信用卡</td>
               <td><input type="text"></td>
           </tr>
           </table>
          
           
         <table border="1">
           <caption>家庭联系人信息</caption>
           <tr>
               <td><label>姓名</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
            <tr>
               <td><label>联系人类型</label></td>
               <td><input type="text"></td>
               <td>和本人关系</td>
               <td><select id="relation" name="relations">
                  <option value="0">亲属</option>
               </select></td>
           </tr>
           <tr>
               <td><label>单位名称</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
            <tr>
               <td><label>家庭地址/单位地址</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           </table>
           
         <table border="1">
           <caption>紧急联系人信息</caption>
           <tr>
               <td><label>姓名</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
            <tr>
               <td><label>联系人类型</label></td>
               <td><input type="text"></td>
               <td>和本人关系</td>
               <td><select id="relation" name="relations">
                  <option value="0">亲属</option>
               </select></td>
           </tr>
           <tr>
               <td><label>单位名称</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
            <tr>
               <td><label>家庭地址/单位地址</label></td>
               <td><input type="text"></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           </table>
           
        <table border="1">
           <caption>借款需求</caption>
           <tr>
               <td><label>借款详细用途</label></td>
               <td><input type="text"></td>
               <td><label>月收入</label></td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>可以承受的月还款额</label></td>
               <td><input type="text"></td>
               <td>希望申请最长还款期限</td>
               <td><select id="relation" name="relations">
                  <option value="0">亲属</option>
               </select></td>
           </tr>
           <tr>
               <td><label>希望申请借款额度</label></td>
               <td><input type="text"></td>
               <td><label>希望申请借款额度</label></td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>您从何处得知正合普惠</label></td>
               <td><input type="text"></td>
               <td><label>申请日期</label></td>
               <td><input type="text"></td>
           </tr>
           <tr>
               <td><label>业务员姓名</label></td>
               <td><input type="text"></td>
               <td><label>车贷专员</label></td>
               <td><input type="text"></td>
           </tr>
           </table>
           
        <table border="1">
           <caption>签约信息</caption>
           <tr>
               <td><label>借款总额</label></td>
               <td><input type="text"></td>
               <td><label>咨询服务费</label></td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>月还款额</label></td>
               <td><input type="text"></td>
               <td>贷款期数</td>
               <td><select id="period" name="periods">
                  <option value="0">亲属</option>
               </select></td>
           </tr>
           <tr>
               <td><label>产品名称</label></td>
               <td><input type="text"></td>
               <td><label>审批金额</label></td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>约定放贷日</label></td>
               <td><input type="text"></td>
               <td><label>放款/还款银行</label></td>
               <td><input type="text"></td>
           </tr>
           <tr>
               <td><label>放款/还款账号</label></td>
               <td><input type="text"></td>
               <td><label>放款/还款开户银行(支行)</label></td>
               <td><input type="text"></td>
           </tr>
           </table>
           
         <table border="1">
           <caption>综合意见</caption>
           <tr>
               <td><label>产品类别 <span style="color:red;">*</span></label></td>
               <td><input type="text"></td>
               <td><label>批准期数<span style="color:red;">*</span></label></td>
               <td><input type="text"></td>
           </tr>
            <tr>
               <td><label>结论 <span style="color:red;">*</span></label></td>
               <td><input type="text"></td>
               <td>审批额度 <span style="color:red;">*</span></td>
               <td><input type="text"></td>
           </tr>
           <tr>
               <td><label>分公司信审意见</label></td>
               <td colspan="3"><textarea row="3" cols="60">
               
               </textarea></td>
              
           </tr>
            <tr>
               <td><label>总公司信审意见</label></td>
               <td colspan="3"><textarea row="3" cols="60">
               
               </textarea></td>
           </tr>
          
           </table>
           
       
           <table border="1">
           <caption>基本信息附件表</caption>
           <tr>
               <td><label>身份证（原件）</label></td>
               <td>
                <label style="margin-right:20px;">附件1</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
            <tr>
               <td><label>车贷申请表</label></td>
               <td>
                <label style="margin-right:20px;">附件2</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>其他附件</label></td>
               <td>
                <label style="margin-right:20px;">附件3</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           </table>
           
           
         <table border="1">
           <caption>车辆信息附件表</caption>
           <tr>
               <td><label>抵押车辆评估表</label></td>
               <td>
                <label style="margin-right:20px;">附件1</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
            <tr>
               <td><label>车辆照片</label></td>
               <td>
                <label style="margin-right:20px;">附件2</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
            <tr>
               <td><label>车辆登记证书（原件）</label></td>
               <td>
                <label style="margin-right:20px;">附件3</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>车辆行驶证正副本（原件）</label></td>
               <td>
                <label style="margin-right:20px;">附件4</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>保单（交强险）</label></td>
               <td>
                <label style="margin-right:20px;">附件5</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>保单（商业险）</label></td>
               <td>
                <label style="margin-right:20px;">附件6</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
            <tr>
               <td><label>其他车辆附件</label></td>
               <td>
                <label style="margin-right:20px;">附件7</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           </table>
           
       <table border="1">
           <caption>签约附件列表</caption>
           <tr>
               <td><label>银行卡 <span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:20px;">附件1</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
            <tr>
               <td><label>机打申请表单 <span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:20px;">附件2</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
            <tr>
               <td><label>小额借款服务合同<span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:20px;">附件3</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>授权扣款委托书<span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:20px;">附件4</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>授权委托书<span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:20px;">附件5</label>
               <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>还款计划表<span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:20px;">附件6</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
            <tr>
               <td><label>补充协议<span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:20px;">附件7</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>车辆买卖回购合同<span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:20px;">附件8</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>授权委托书（车辆处理使用）<span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:20px;">附件9</label>
               <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>车辆抵押照片<span style="color:red;">*</span></label></td>
               <td>
                <label style="margin-right:13px;">附件10</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           <tr>
               <td><label>车辆入库照片</label></td>
               <td>
                <label style="margin-right:13px;">附件11</label>
                <a href="#" download="文件名.txt"><button>下载</button></a>
               </td>
               <td><label>附件大小</label></td>
               <td><span>&nbsp;</span></td>
           </tr>
           </table>
        </form>
          <button  class="btn btn-primary" onclick="but()">返回</button>
    </div>
    <script type="text/javascript">
    function but() {
		 $("#viewDiv").panel({
			 iconCls: "icon-add",
            collapsible: true,
            minimizable: true,
            maximizable: true,
            closable: true,
            href: "static/jsp/loan/loanMoney.jsp"
        });
	}
    
    </script>
</body>
</html>