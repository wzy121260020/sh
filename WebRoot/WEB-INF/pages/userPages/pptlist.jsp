<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>pptlist</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table>
    <s:iterator var="ppt" value="#lst">
    	<tr>
    		<td bgcolor="#ffffff" align="center">
    			<div class="style3">
    				<s:property value="#ppt.id"></s:property>
    			</div>
    		</td>
    		<td bgcolor="#ffffff" align="center">
    			<div class="style3">
					<s:property value="#ppt.name"></s:property>
				</div>
    		</td>
    		<td bgcolor="#ffffff" align="center">
    			<div class="style3">
					<s:a action="userppt!pptDownload.action">
					下载<s:param name="id">${ppt.id }</s:param>
					</s:a>
				</div>
    		</td>
    	</tr>
    </s:iterator>
    </table>
  </body>
</html>
