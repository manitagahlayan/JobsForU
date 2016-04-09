<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.page.Show"%>
<%@ page import="com.bwm.db.Data"%>
<%@ page import="com.bwm.string.Str"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="student" class="job.Student" scope="request" />
<jsp:setProperty name="student" property="*" />
<%
	Show show = new Show();
	Str str = new Str();
	String strEmail = (String) session.getAttribute("email");
	String newPassword=(String)request.getParameter("newPassword");

	int intT = 0;
	Data data = new Data();
	intT = data.insert("UPDATE student SET password='"
			+ newPassword +"'WHERE email='"
			+ strEmail + "'");
	if (intT <= 0) {
		out.print("<script>alert('Failed to Connect to Database.');document.location='profile-view.jsp';</script>");
		return;
	} else {
		out.print("<script>alert('Edit Successed.');document.location='profile-view.jsp';</script>");
	}
%>
