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

	String strEmail = (String) session.getAttribute("email");	
	String firstName=(String)request.getParameter("firstName");
	String lastName=(String)request.getParameter("lastName");
	String telephone=(String)request.getParameter("telephone");
	String address=(String)request.getParameter("address");
	String summary=(String)request.getParameter("summary");
	String expectedJob=(String)request.getParameter("expectedJob");
	String schoolName=(String)request.getParameter("schoolName");
	String schoolStartMonth=(String)request.getParameter("schoolStartMonth");
	String schoolEndMonth=(String)request.getParameter("schoolEndMonth");
	String schoolDegree=(String)request.getParameter("schoolDegree");
	String schoolMajor=(String)request.getParameter("schoolMajor");
	String workCompanyName=(String)request.getParameter("workCompanyName");
	String workJobTitle=(String)request.getParameter("workJobTitle");
	String workStartMonth=(String)request.getParameter("workStartMonth");
	String workEndMonth=(String)request.getParameter("workEndMonth");
	String workJobResponsibility=(String)request.getParameter("workJobResponsibility");
	String projectName=(String)request.getParameter("projectName");
	String projectDescription=(String)request.getParameter("projectDescription");
	String skills=request.getParameter("skills");
	String schoolStartYear=request.getParameter("schoolStartYear");
	String schoolEndYear=request.getParameter("schoolEndYear");
	String workStartYear=request.getParameter("workStartYear");
	String workEndYear=request.getParameter("workEndYear");
	
	int intT = 0;
	Data data = new Data();
	intT = data.insert("UPDATE student SET firstName='"
			+ firstName + "',lastName='"
			+ lastName + "',telephone='"
			+ telephone + "',address='"
			+ address + "',summary='"
			+ summary + "',expectedJob='"
			+ expectedJob + "',skills='"
			+ skills + "',schoolName='"
			+ schoolName + "',schoolStartMonth='"
			+ schoolStartMonth + "',schoolStartYear='"
			+ schoolStartYear + "',schoolEndMonth='"
			+ schoolEndMonth + "',schoolEndYear='"
			+ schoolEndYear + "',schoolDegree='"
			+ schoolDegree + "',schoolMajor='"
			+ schoolMajor + "',workCompanyName='"
			+ workCompanyName + "',workJobTitle='"
			+ workJobTitle + "',workStartMonth='"
			+ workStartMonth + "',workEndMonth='"
			+ workEndMonth + "',workJobResponsibility='"
			+ workJobResponsibility + "',projectName='"
			+ projectName + "',projectDescription='"
			+ projectDescription + "'WHERE email='"
			+ strEmail + "'");
	if (intT <= 0) {
		out.print("<script>alert('Failed to connect to the database.');document.location='profile-view.jsp';</script>");
		return;
	} else {
		out.print("<script>alert('Edit Successed.');document.location='profile-view.jsp';</script>");
	}
%>
