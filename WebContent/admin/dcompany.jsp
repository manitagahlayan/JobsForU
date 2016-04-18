<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.bwm.db.Data"%>
<%
session.getAttribute("admin");
String strCname=(String)request.getParameter("cname");
Data data=new Data();
int intT=data.delete("DELETE FROM recruiter WHERE recEmail='"+strCname+"'");
	if(intT>0){
		out.print("<script>alert('The recruiter was deleted successfully.');document.location='login.htm';</script>");
	}else{
		out.print("<script>alert('Failed to Connect to Database.');document.location='login.htm';</script>");
	}
%>
