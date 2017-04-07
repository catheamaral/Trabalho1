<%-- 
    Document   : q2_1_2
    Created on : 07/04/2017, 16:28:47
    Author     : cathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    boolean menu = false;
    int n1 = 0;
    int n2 = 0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%if(!menu){%>
        <h1>Questão 2 da atividade 2 - While</h1>
        Digite 2 números:
        <form action="questao2_1_2" method="POST">
                <input type="text" name="n1">
                <input type="text" name="n2">
                <input type="submit" value="Enviar"/>
        </form>
        <% } else{ %>
        <form action="questao2_1_2?n1=<%=n1%>&n2=<%=n2%>" method="post">
                <input type="radio" name="op" value="soma" checked> Somar<br>
                <input type="radio" name="op" value="sub"> Subtrair<br>
                <input type="radio" name="op" value="div"> Dividir<br>
                <input type="submit" value="Enviar"/>
            </form>
        <%}%>
        
        
    </body>
</html>
