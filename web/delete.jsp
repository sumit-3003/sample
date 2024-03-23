<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    String empid=request.getParameter("empid");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb3?characterEncoding=utf-8","root","");
    String query="delete from employee where empid='"+empid+"'";
    PreparedStatement ps=con.prepareStatement(query);
    ps.executeUpdate();
    con.close();
    out.print("<script>alert('record is delete');window.location.href='index2.jsp';</script>");
%>