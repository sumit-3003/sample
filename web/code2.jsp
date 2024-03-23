<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String empid=request.getParameter("empid");
        String empname=request.getParameter("empname");
            String gender=request.getParameter("gender");
                String department=request.getParameter("department");
                    String contactno=request.getParameter("contactno");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb3?characterEncoding=utf-8","root","");
                    String query="insert into employee values('"+empid+"','"+empname+"','"+gender+"','"+department+"','"+contactno+"')";
                    PreparedStatement ps=con.prepareStatement(query);
                ps.executeUpdate();
                con.close();
                out.print("<script>alert('Registration is done');window.location.href='index2.jsp'</script>");


%>