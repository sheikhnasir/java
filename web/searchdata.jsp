<%-- 
    Document   : searchdata
    Created on : Mar 19, 2024, 9:56:48 PM
    Author     : virtualspace
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data loading....</title>
    </head>
    <body>
        <h1>Data is being search... 
            <%
                String searchtxt = request.getParameter("searchtxt");
                out.println(searchtxt);
                dbcon connection = new dbcon();
                String sql = "SELECT * FROM public.tbluser "
                        + " WHERE public.tbluser.userid LIKE '%" + searchtxt + "%' "
                        + " LIMIT 1000 OFFSET 0";
                ResultSet rs = connection.sqlquery(sql);
               // out.println(sql);
            %>

        </h1>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>UserID</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int i = 1;
                    while (rs.next()) {
                   try {
                %>
                <tr>
                    <td><% out.println(i); %></td>
                    <td><% out.println(rs.getString("userid")); %></td>
                    <td></td>
                    <td></td>
                </tr>
                <%
                        } catch (Exception ex) {

                        }
                        i++;
                    }
                %>


            </tbody>
        </table>

    </body>
</html>
