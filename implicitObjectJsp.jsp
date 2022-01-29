<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<%@ page errorPage = "errorPage.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
		String adminId;
		String adminPw;
		
		String imgDir;
		String testServerIP;
		String realServerIP;
		
		String connectedIP;
		String connectedUser;
		
		String str;
		%>
		
		<%
		adminId = config.getInitParameter("adminId");
		adminPw = config.getInitParameter("adminPw");
		%>
		
		<p>adminId : <%= adminId %></p>
		<p>adminPw : <%= adminPw %></p>
		
		<%
		imgDir = application.getInitParameter("imgDir");
		testServerIP = application.getInitParameter("testServerIP");
		realServerIP = application.getInitParameter("realServerIP");
		%>
		
		<p>imgDir : <%= imgDir %></p>
		<p>testServerIP : <%= testServerIP %></p>
		<p>realServerIP : <%= realServerIP %></p>
		
		<%
		application.setAttribute("connectedIP", "165.62.58.23");
		application.setAttribute("connectedUser", "hong");
		%>
		
		<%
		connectedIP = (String)application.getAttribute("connectedIP");
		connectedUser = (String)application.getAttribute("connectedUser");
		%>
		<p>connectedIP : <%= connectedIP %></p>
		<p>connectedUser : <%= connectedUser %></p>
		
		<!-- out object -->
		<%
		out.print("<h1>Hello JAVA World!!</h1>");
		out.print("<h2>Hello JSP World!!</h2>");
		out.print("<h3>Hello Servlet World!!</h3>");
		%>
		
		<!-- exception object -->
		<%
			out.print(str.toString());
		%>
	</body>
</html>