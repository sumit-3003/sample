<%-- 
    Document   : update
    Created on : 12 Oct, 2023, 11:01:55 AM
    Author     : skuma
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Employee</title>
    </head>
    <body>
        <h1>Update employee Information</h1>
        <%
            String empid=request.getParameter("empid");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb3?characterEncoding=utf-8","root","");
            String query="select * from employee where empid='"+empid+"'";
            PreparedStatement ps=con.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
                
            {
        %>
        <form method="post" action="ucode.jsp">
            <table>
                <tr>
                    <td>Employee Id</td>
                    <td>
                        <input type="text" name="empid" value="<%=rs.getString("empid")%>">
                    </td>
                </tr>
                <tr>
                    <td>Employee name</td>
                    <td>
                        <input type="text" name="empname" value="<%=rs.getString("empname")%>">
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="text" name="gender" value="<%=rs.getString("gender")%>">
                    </td>
                </tr>
                <tr>
                   <td>Department</td>
                    <td>
                        <input type="text" name="department" value="<%=rs.getString("department")%>">
                    </td> 
                </tr>
                <tr>
                    <td>contact no</td>
                    <td>
                        <input type="number" name="contact" value="<%=rs.getString("contactno")%>">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="update">
                    </td>
                </tr>
            </table>
        </form>
        <%
                }
        %>
    </body>
</html>
