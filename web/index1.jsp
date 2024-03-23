<%-- 
    Document   : index1
    Created on : 11 Oct, 2023, 7:20:20 PM
    Author     : skuma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Marriage Eligibility</title>
    </head>
    <body>
        <h1>Marriage Eligibility Test</h1>
        <form method="post" action="code1.jsp">
            <table>
                <tr>
                    <td>Enter Your Name </td>
                    <td>
                    <input type="text" name="name" required/>
                    </td>
                </tr>
                <tr>
                    <td>Select Gender </td>
                    <td>
                        <input type="radio" name="gender" value="male" required/> Male
                        <input type="radio" name="gender" value="female" required/> Female
                    </td>
                </tr>
                <tr>
                    <td>Enter Age </td>
                    <td>
                        <input type="int" name="age" required/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center;">
                        <input type="submit" value="Test"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
