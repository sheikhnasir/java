<%-- 
    Document   : search
    Created on : Mar 19, 2024, 9:46:44 PM
    Author     : virtualspace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        <h1>Find Staff</h1>
        <input type="text" name="Searchtxt" value="" 
              onkeydown ="loadSearch()" />
        <form action="search.jsp">
            <div id="searchdemo">
                No Data
             <div>
        </form>
    </body>
</html>
<script>
    function loadSearch(){
        const xhttp=new XMLHttpRequest();
        xhttp.onload=function(){
            document.getElementById("searchdemo").innerHTML=
                    this.responseText;
        }
        xhttp.open("GET","searchdata.jsp");
        xhttp.send();
    }
</script>