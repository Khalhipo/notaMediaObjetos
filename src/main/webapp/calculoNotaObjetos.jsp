<%-- 
    Document   : calculoNotaObjetos
    Created on : 19-ene-2021, 18:01:42
    Author     : Bueno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="clases.NotaMedia"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Alumno</title>
        <style>
            .aprobado {
                color: green;
            }

            .suspenso {
                color: red;
            }
        </style>
    </head>
    <body>
        <h1>Resultado alumno</h1>
        <%
            String nombre = request.getParameter("nombre");
            double nota1 = Double.parseDouble(request.getParameter("nota1"));
            double nota2 = Double.parseDouble(request.getParameter("nota2"));
            double nota3 = Double.parseDouble(request.getParameter("nota3"));
            
            NotaMedia nm = new NotaMedia(nota1,nota2,nota3);

            String color = nm.getNotaMedia() >= 5 ? "aprobado" : "suspenso";
        %>

        <h2>Nombre alumno: <%= nombre %></h2>
        <h2>Nota media: <%= nm.getNotaMedia()%></h2>
        <h2 class="<%= color %>"><%= nm.getMensaje()%></h2>
    </body>
</html>
