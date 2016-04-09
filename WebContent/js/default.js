// JavaScript Document

function reg(){
	if(document.form.password.value!=document.form.rpassword.value){
		alert("Please make sure you type in the same password two times");
		return false;
	}
	return true;
}

function email(){
	if(document.form1.jname.value==""||document.form1.jname.value.indexOf("@")==-1||document.form1.jname.value.indexOf(".")==-1){
		alert("�������������ȷEmail");
		return false;
	}
	if(document.form1.sname.value==""||document.form1.sname.value.indexOf("@")==-1||document.form1.sname.value.indexOf(".")==-1){
		alert("��������������ȷEmail");
		return false;
	}
	if(document.form1.title.value==""){
		alert("����������");
		return false;
	}

	return true;
}
