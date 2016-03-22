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
	student.setFirstName(str.dbEncode(student.getFirstName()));
	student.setLastName(str.dbEncode(student.getLastName()));
	student.setTelephone(str.dbEncode(student.getTelephone()));
	student.setAddress(str.dbEncode(student.getAddress()));
	student.setSummary(str.dbEncode(student.getSummary()));
	student.setExpectedJob(str.dbEncode(student.getExpectedJob()));
	
	student.setSchoolName(str.dbEncode(student.getSchoolName()));
	student.setSchoolStartMonth(str.dbEncode(student
			.getSchoolStartMonth()));
	student.setSchoolEndMonth(str.dbEncode(student.getSchoolEndMonth()));
	student.setSchoolDegree(str.dbEncode(student.getSchoolDegree()));
	student.setSchoolMajor(str.dbEncode(student.getSchoolMajor()));
	student.setWorkCompanyName(str.dbEncode(student
			.getWorkCompanyName()));
	student.setWorkJobTitle(str.dbEncode(student.getWorkJobTitle()));
	student.setWorkStartMonth(str.dbEncode(student.getWorkStartMonth()));
	student.setWorkEndMonth(str.dbEncode(student.getWorkEndMonth()));
	student.setWorkJobResponsibility(str.dbEncode(student
			.getWorkJobResponsibility()));
	student.setProjectName(str.dbEncode(student.getProjectName()));
	student.setProjectDescription(str.dbEncode(student
			.getProjectDescription()));
	student.setSkills(str.dbEncode(student.getSkills()));

	int intT = 0;
	Data data = new Data();
	intT = data.insert("UPDATE student SET firstName='"
			+ student.getFirstName() + "',lastName='"
			+ student.getLastName() + "',telephone='"
			+ student.getTelephone() + "',address='"
			+ student.getAddress() + "',summary='"
			+ student.getSummary() + "',expectedJob='"
			+ student.getExpectedJob() + "',skills='"
			+ student.getSkills() + "',schoolName='"
			+ student.getSchoolName() + "',schoolStartMonth='"
			+ student.getSchoolStartMonth() + "',schoolStartYear='"
			+ student.getSchoolStartYear() + "',schoolEndMonth='"
			+ student.getSchoolEndMonth() + "',schoolEndYear='"
			+ student.getSchoolEndYear() + "',schoolDegree='"
			+ student.getSchoolDegree() + "',schoolMajor='"
			+ student.getSchoolMajor() + "',workCompanyName='"
			+ student.getWorkCompanyName() + "',workJobTitle='"
			+ student.getWorkJobTitle() + "',workStartMonth='"
			+ student.getWorkStartMonth() + "',workEndMonth='"
			+ student.getWorkEndMonth() + "',workJobResponsibility='"
			+ student.getWorkJobResponsibility() + "',projectName='"
			+ student.getProjectName() + "',projectDescription='"
			+ student.getProjectDescription() + "'WHERE email='"
			+ strEmail + "'");
	if (intT <= 0) {
		out.print(show.errorBox("Database Mistake", "Oops"));
		return;
	} else {
		out.print("<script>alert('Edit Successed.');document.location='profile-edit.jsp';</script>");
	}
%>
