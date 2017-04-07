<%-- 
    Document   : q1_1_2
    Created on : 07/04/2017, 16:07:25
    Author     : cathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String repeat = request.getParameter("repeat");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if (repeat == null) { %>
        <h1>Quetão 1 da atividade 2 - While</h1>
            
            <form action="questao1_1_2" method="POST">
                Informe uma palavra:
                <input type="text" name="p"/> <br>
                <input type="submit" value="Enviar"/>
            </form>
        <%} else{%>
            <h1> Palavra errada cara! Por favor, insira novamente. </h1>
            <form action="questao1_1_2" method="POST">
                Informe uma palavra:
                <input type="text" name="p"/><br>
                <input type="submit" value="Enviar"/>
            </form>
            <% repeat=null; %>
        <%}%> 
    </body>
</html>
