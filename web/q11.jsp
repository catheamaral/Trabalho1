<%-- 
    Document   : q11
    Created on : 07/04/2017, 11:52:32
    Author     : cathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String status = request.getParameter("status");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Questao 11</h1>
         <% if (status ==null){%>
        <form action="questao11" method="POST">
            Informe um valor:
            <input type="text" name="n1"/><br/>
            Informe um segundo valor:
            <input type="text" name="n2"/><br/><br/>
            <input type="submit" value="Enviar"/>
        </form>
        <%} else {%>
         
        <form action="questao11" method="POST">
            Os valores informados não conferem
            Informe valor novamente:
            <input type="text" name="n1"/><br/>
            Informe um segundo valor novamente:
            <input type="text" name="n2"/><br/><br/>
            <input type="submit" value="Enviar"/>
        </form>
        <%}%>
    </body>
</html>
