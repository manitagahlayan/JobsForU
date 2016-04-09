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
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String telephone = request.getParameter("telephone");
	String address = request.getParameter("address");
	String summary = request.getParameter("summary");
	String expectedJob = request.getParameter("expectedJob");
	String skills = request.getParameter("skills");
	String schoolName = request.getParameter("schoolName");
	String schoolStartMonth = request.getParameter("schoolStartMonth");
	String schoolStartYear = request.getParameter("schoolStartYear");
	String schoolEndMonth = request.getParameter("schoolEndMonth");
	String schoolEndYear = request.getParameter("schoolEndYear");
	String schoolDegree = request.getParameter("schoolDegree");
	String schoolMajor = request.getParameter("schoolMajor");
	String workCompanyName = request.getParameter("workCompanyName");
	String workJobTitle = request.getParameter("workJobTitle");
	String workStartMonth = request.getParameter("workStartMonth");
	String workStartYear = request.getParameter("workStartYear");
	String workEndMonth = request.getParameter("workEndMonth");
	String workEndYear = request.getParameter("workEndYear");
	String workJobResponsibility = request
			.getParameter("workJobResponsibility");
	String projectName = request.getParameter("projectName");
	String projectDescription = request
			.getParameter("projectDescription");

	int intT = 0;
	Data data = new Data();
	intT = data.insert("UPDATE student SET firstName='" + firstName
			+ "',lastName='" + lastName + "',telephone='" + telephone
			+ "',address='" + address + "',summary='" + summary
			+ "',expectedJob='" + expectedJob + "',skills='" + skills
			+ "',schoolName='" + schoolName + "',schoolStartMonth='"
			+ schoolStartMonth + "',schoolStartYear='"
			+ schoolStartYear + "',schoolEndMonth='" + schoolEndMonth
			+ "',schoolEndYear='" + schoolEndYear + "',schoolDegree='"
			+ schoolDegree + "',schoolMajor='" + schoolMajor
			+ "',workCompanyName='" + workCompanyName
			+ "',workJobTitle='" + workJobTitle + "',workStartMonth='"
			+ workStartMonth + "',workEndMonth='" + workEndMonth
			+ "',workStartYear='" + workStartYear + "',workEndYear='"
			+ workEndYear + "',workJobResponsibility='"
			+ workJobResponsibility + "',projectName='" + projectName
			+ "',projectDescription='" + projectDescription
			+ "'WHERE email='" + strEmail + "'");

	if (intT <= 0) {
		out.print("<script>alert('Failed to connect to the database.');document.location='profile-view.jsp';</script>");
		return;
	} else {
		out.print("<script>alert('Edit Successed.');document.location='profile-view.jsp';</script>");
	}
%>
