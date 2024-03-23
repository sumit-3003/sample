<%-- 
    Document   : index
    Created on : 10 Oct, 2023, 9:52:32 AM
    Author     : skuma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Calc</title>
    </head>
    <body>
        <h1>Simple Calculator</h1>
        <form method="post" action="code.jsp">
            <table>
                <tr>
                    <td>Enter First No</td>
                    <td>
                        <input type="number" name="n1" required>
                    </td>
                </tr>
                <tr>
                    <td>Enter Second No</td>
                    <td>
                        <input type="number" name="n2" required>
                    </td>
                </tr>
                <tr>
                    <td>Select Operation</td>
                    <td>
                        <input type="radio" name="op" value="add" required/>+
                        <input type="radio" name="op" value="subtract" required/>-
                        <input type="radio" name="op" value="multiply" required/>*
                        <input type="radio" name="op" value="divide" required/>/
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <input type="submit" value="calc"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
