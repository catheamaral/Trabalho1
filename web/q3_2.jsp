<%-- 
    Document   : q3_2
    Created on : 07/04/2017, 14:41:20
    Author     : cathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Questão 3 da atividade 2</h1>
        Serão apresentados todos os números primos entre 0 e 100
        <% int i,cont, y;
        for(i=1; i<=100;i++){
         cont= 0;
         for (y=1; y<=i; y++){
             if (i%y==0)
                 cont++;
         }
        if (cont==2){
            
            %> <%=i%> <%
        }
        }
        
        %>
    </body>
</html>
