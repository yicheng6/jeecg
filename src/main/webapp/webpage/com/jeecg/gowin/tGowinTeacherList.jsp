<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="tGowinTeacherList" checkbox="false" pagination="true" fitColumns="true" title="教师管理" actionUrl="tGowinTeacherController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="工号"  field="gh"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="姓名"  field="xm"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="身份证件号"  field="sfzjh"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="出生日期"  field="csrq"  formatter="yyyy-MM-dd"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="性别"  field="xbm"  queryMode="single"  dictionary="xbm"  width="120"></t:dgCol>
   <t:dgCol title="民族"  field="mzm"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="婚姻状态"  field="hyzkm"  queryMode="single"  dictionary="hyzkm"  width="120"></t:dgCol>
   <t:dgCol title="政治面貌"  field="zzmmm"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="籍贯"  field="jg"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="系统账号"  field="sysAccount"  query="true"  queryMode="single"  dictionary="t_s_base_user,username,username"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="tGowinTeacherController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="tGowinTeacherController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="tGowinTeacherController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="tGowinTeacherController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="tGowinTeacherController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/gowin/tGowinTeacherList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'tGowinTeacherController.do?upload', "tGowinTeacherList");
}

//导出
function ExportXls() {
	JeecgExcelExport("tGowinTeacherController.do?exportXls","tGowinTeacherList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("tGowinTeacherController.do?exportXlsByT","tGowinTeacherList");
}

 </script>