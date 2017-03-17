<%-- 
    Document   : q03
    Created on : 09/03/2017, 23:28:34
    Author     : Catherine A.
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
        <form action="questao3" method="POST" >
            Idade: 
            <input type="text" name="idade" /> <br/>
            
            <input type="radio" name="ec" value="sol" /> Solteiro <br/>
            <input type="radio" name="ec" value="cas"/> Casado <br/>
            <input type="radio" name="ec" value="sep"/> Separado <br/>
            <input type="radio" name="ec" value="div"/> Divorciado <br/>
            <br/>
            <input type="radio" name="escolaridade" value="1" /> 1ºGrau incompleto <br/>
            <input type="radio" name="escolaridade" value="2" /> 1ºGrau completo <br/>
            <input type="radio" name="escolaridade" value="3" /> 2ºGrau incompleto <br/>
            <input type="radio" name="escolaridade" value="4" /> 2ºGrau completo <br/>
            <br/>
            <input type="submit" value="Enviar" />
        </form>
        
    </body>
</html>
