<%-- 
    Document   : q01
    Created on : 09/03/2017, 22:43:02
    Author     : Catherine
    Enunciado  : Faça um programa onde o usuário digita um número inteiro e é enviado para a tela o
                seu antecessor, o seu sucessor, o seu quadrado, e sua raiz quadrada. Se o quadrado do
                número for maior que 50, multiplique o número digitado por 2. Obs.: se o número
                digitado for 0 – pedir para que seja digitado outro número.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Questão 01</h1>
        <form action="questao1" method="POST" >
            <input type="text" name="numero" />
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>

