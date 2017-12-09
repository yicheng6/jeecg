<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>

<t:datagrid name="userList" title="common.operation" actionUrl="userController.do?datagrid" fit="true" fitColumns="true" idField="id" queryMode="group" sortName="createDate,userName" sortOrder="asc,desc">
	<t:dgCol title="common.id" field="id" hidden="true"></t:dgCol>
	<t:dgCol title="common.username" sortable="false" field="userName" query="true" width="100"></t:dgCol>
	<t:dgCol title="common.real.name" field="realName" query="true" width="100"></t:dgCol>
	<t:dgCol title="common.role" field="userKey" width="100"></t:dgCol>
	<t:dgCol title="common.createby" field="createBy" hidden="true" width="100"></t:dgCol>
	<t:dgCol title="common.createtime" field="createDate" formatter="yyyy-MM-dd" hidden="false"></t:dgCol>
	<t:dgCol title="common.updateby" field="updateBy" hidden="true"></t:dgCol>
	<t:dgCol title="common.updatetime" field="updateDate" formatter="yyyy-MM-dd" hidden="true"></t:dgCol>	
	<t:dgCol title="common.operation" field="opt" width="100"></t:dgCol>
	<t:dgFunOpt funname="deleteDialog(id)" title="common.delete" urlclass="ace_button"  urlfont="fa-trash-o"></t:dgFunOpt>
	<!-- update-begin--Author:LiShaoQing  Date:20170802 for 新增页面调高高度-------------------- -->
	<t:dgToolBar title="common.add.param" langArg="common.user" icon="icon-add" url="userController.do?addorupdate" funname="add" height="420"></t:dgToolBar>
	<!-- update-end--Author:LiShaoQing  Date:20170802 for 新增页面调高高度-------------------- -->
	<t:dgToolBar title="common.edit.param" langArg="common.user" icon="icon-edit" url="userController.do?addorupdate" funname="update"></t:dgToolBar>
	<t:dgToolBar title="common.password.reset" icon="icon-edit" url="userController.do?changepasswordforuser" funname="update"></t:dgToolBar>
</t:datagrid>
<script type="text/javascript">
function deleteDialog(id){
	var url = "userController.do?deleteDialog&id=" + id
	createwindow("删除模式", url, 200, 100);
}
</script>
