<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>教师管理</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tGowinTeacherController.do?doUpdate" >
					<input id="id" name="id" type="hidden" value="${tGowinTeacherPage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								工号:
							</label>
						</td>
						<td class="value">
						     	 <input id="gh" name="gh" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${tGowinTeacherPage.gh}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">工号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								姓名:
							</label>
						</td>
						<td class="value">
						     	 <input id="xm" name="xm" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${tGowinTeacherPage.xm}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">姓名</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								身份证件号:
							</label>
						</td>
						<td class="value">
						     	 <input id="sfzjh" name="sfzjh" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${tGowinTeacherPage.sfzjh}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">身份证件号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								出生日期:
							</label>
						</td>
						<td class="value">
									  <input id="csrq" name="csrq" type="text" style="width: 150px"  class="Wdate" onClick="WdatePicker()"  ignore="ignore" value='<fmt:formatDate value='${tGowinTeacherPage.csrq}' type="date" pattern="yyyy-MM-dd"/>'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">出生日期</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								性别:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="xbm" type="list"  datatype="*"  typeGroupCode="xbm"   defaultVal="${tGowinTeacherPage.xbm}" hasLabel="false"  title="性别" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">性别</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								民族:
							</label>
						</td>
						<td class="value">
						     	 <input id="mzm" name="mzm" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${tGowinTeacherPage.mzm}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">民族</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								婚姻状态:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="hyzkm" type="list"  datatype="*"  typeGroupCode="hyzkm"   defaultVal="${tGowinTeacherPage.hyzkm}" hasLabel="false"  title="婚姻状态" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">婚姻状态</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								政治面貌:
							</label>
						</td>
						<td class="value">
						     	 <input id="zzmmm" name="zzmmm" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${tGowinTeacherPage.zzmmm}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">政治面貌</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								籍贯:
							</label>
						</td>
						<td class="value">
						     	 <input id="jg" name="jg" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${tGowinTeacherPage.jg}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">籍贯</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								系统账号:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="sysAccount" type="list"  dictTable="t_s_base_user" dictField="username" dictText="username"   defaultVal="${tGowinTeacherPage.sysAccount}" hasLabel="false"  title="系统账号" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">系统账号</label>
						</td>
					</tr>
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/gowin/tGowinTeacher.js"></script>		
