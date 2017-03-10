<%-- 
    Document   : q03
    Created on : 09/03/2017, 23:28:34
    Author     : Laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Questão 03</h1>
        <form action="questao1" method="POST" >
            <input type="text" name="idade" />
            
            <input type="radio" name="ec" value="sol" /> Solteiro
            <input type="radio" name="ec" value="cas"/> Casado
            <input type="radio" name="ec" value="sep"/> Separado
            <input type="radio" name="ec" value="div"/> Divorciado
            
            <input type="checkbox" name="escolaridade" value="1º " />
            
            <input type="submit" value="Enviar" />
        </form>
        
    </body>
</html>
