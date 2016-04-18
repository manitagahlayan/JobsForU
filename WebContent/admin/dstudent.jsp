<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.bwm.db.Data"%>
<%
session.getAttribute("admin");
String strSname=(String)request.getParameter("sname");
Data data=new Data();
int intT=data.delete("DELETE FROM student WHERE email='"+strSname+"'");
	if(intT>0){
		out.print("<script>alert('The student was deleted successfully.');document.location='login.htm';</script>");
	}else{
		out.print("<script>alert('Failed to Connect to Database.');document.location='login.htm';</script>");
	}
%>
