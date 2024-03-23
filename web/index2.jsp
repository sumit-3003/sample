<%-- 
    Document   : index
    Created on : 11 Oct, 2023, 9:46:14 AM
    Author     : LENOVO
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee information system</title>
    </head>
    <body>
        <h1>Employee Registration System</h1>
        <form method="post" action="code2.jsp">
            <table>
                <tr>
                    <td>
                        Enter Employee ID
                    </td>
                    <td>
                        <input type="text" name="empid" required/>
                    </td>
                    </tr>
                    <tr>
                        <td>
                            Enter Employee name
                        </td>
                        <td>
                            <input type="text" name="empname" required/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            select Gender
                        </td>
                        <td>
                            <input type="radio" name="gender" value="Male"/>Male
                            <input type="radio" name="gender" value="Female"/>Female
                        </td>
                    </tr>
                    <tr>
                        <td>
                            select department
                        </td>
                        <td>
                            <select name="department">
                               
                                <option>Development</option>
                                <option>Management</option>
                                <option>HR</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Enter contact no
                        </td>
                        <td>
                    <input type="number" name="contactno" required/>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="Register"/>
                        </td>
                    </tr>
            </table>
        </form>
        <br/>
        <table border="1">
            <tr>
                <th>Employee Id</th>
                <th>Employee Name</th>
                <th>Gender</th>
                <th>Department</th>
                <th>Contact No</th>
            </tr>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdb3?characterEncoding=utf-8","root","");
                String query="select * from employee";
                PreparedStatement ps=con.prepareStatement(query);
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
            %>
            <tr> 
                <td>
                    <%=rs.getString("empid")%>
                </td>
                <td>                    <%=rs.getString("empname")%>
                </td>
                <td>                    <%=rs.getString("gender")%>
                </td>
                 <td>                      <%=rs.getString("department")%>
                  </td>
<td>
                        <%=rs.getString("contactno")%>

</td>
<td>
    <a href="delete.jsp?empid=<%=rs.getString("empid")%>">Delete</a>
</td>
<td>
    <a href="update.jsp?empid=<%=rs.getString("empid")%>">Update</a>
</td>
            </tr>
            <%
                }    
            %>
        </table>
    </body>
</html>
