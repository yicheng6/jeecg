<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="tGowinStudentList" checkbox="false" pagination="true" fitColumns="true" title="学生管理" actionUrl="tGowinStudentController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="学号"  field="xh"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="姓名"  field="xm"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="身份证件号"  field="xfzjh"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="性别"  field="xbm"  queryMode="single"  dictionary="xbm"  width="120"></t:dgCol>
   <t:dgCol title="出生日期"  field="csrq"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="籍贯"  field="jg"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="民族码"  field="mzm"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="婚姻状况"  field="hyzkm"  queryMode="single"  dictionary="hyzkm"  width="120"></t:dgCol>
   <t:dgCol title="联系电话"  field="xslxdh"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="系统账号"  field="sysAccount"  queryMode="single"  dictionary="t_s_base_user,username,username"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <c:if test="${auth}">
	   <t:dgDelOpt title="删除" url="tGowinStudentController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
	   <t:dgToolBar title="录入" icon="icon-add" url="tGowinStudentController.do?goAdd" funname="add"></t:dgToolBar>
	   <t:dgToolBar title="编辑" icon="icon-edit" url="tGowinStudentController.do?goUpdate" funname="update"></t:dgToolBar>
	   <t:dgToolBar title="批量删除"  icon="icon-remove" url="tGowinStudentController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   </c:if>
   <t:dgToolBar title="查看" icon="icon-search" url="tGowinStudentController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/gowin/tGowinStudentList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'tGowinStudentController.do?upload', "tGowinStudentList");
}

//导出
function ExportXls() {
	JeecgExcelExport("tGowinStudentController.do?exportXls","tGowinStudentList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("tGowinStudentController.do?exportXlsByT","tGowinStudentList");
}

 </script>