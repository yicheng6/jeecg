<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>班级管理</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tGowinClassController.do?doUpdate" >
					<input id="id" name="id" type="hidden" value="${tGowinClassPage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								班级代码:
							</label>
						</td>
						<td class="value">
						     	 <input id="xzbdm" name="xzbdm" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${tGowinClassPage.xzbdm}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">班级代码</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								班级名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="xzbmc" name="xzbmc" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${tGowinClassPage.xzbmc}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">班级名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								班主任:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="bzrgh" type="list"  datatype="*"  dictTable="t_gowin_teacher" dictField="gh" dictText="xm"   defaultVal="${tGowinClassPage.bzrgh}" hasLabel="false"  title="班主任" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">班主任</label>
						</td>
					</tr>
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/gowin/tGowinClass.js"></script>		
