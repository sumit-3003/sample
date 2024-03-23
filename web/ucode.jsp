<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    String empid=request.getParameter("empid");
    String empname=request.getParameter("empname");
    String gender=request.getParameter("gender");
    String department=request.getParameter("department");
    String contactno=request.getParameter("contactno");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb3?characterEncoding=utf-8","root","");
    String query="update employee set empname='"+empname+"',gender='"+gender+"',department='"+department+"',contactno='"+contactno+"'where empid='"+empid+"'";
    PreparedStatement ps=con.prepareStatement(query);
    ps.executeUpdate();
    out.print("<script>alert('record is updated');window.location.href='index2.jsp';</script>");
%>    
