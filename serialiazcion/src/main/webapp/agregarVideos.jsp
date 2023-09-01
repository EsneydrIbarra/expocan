<%-- 
    Document   : agregarVideos
    Created on : 29/08/2023, 5:46:40 p. m.
    Author     : esney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spotify</title>
    </head>
    <body>
        <h1>Reproductor de videos</h1>
       
        <form action="svVideo" method = "POST">
            
            <label for ="idVideo"idVideo>id del video:</label>
            <input type =" text " name="idVideo" ><br> 

            <label for="titulo"> Titulo: </label>
            <input type =" text " name="titulo" ><br> 
            
            <label for = "autor" > Autor: </label>
            <input type =" text " name="autor" ><br>
            
            <label for = "anio">Año: </label>
            <input type =" text " name="anio" ><br>
            
            <label for = "categoria" >Categoria: </label>
            <input type =" text " name="categoria" ><br>
            
            <label for = "url">Url: </label>
            <input type =" text " name="url" ><br>
            
            <label for = "letra">Letra: </label>
            <textarea name="letra" rows="5"></textarea> <br>
            <input type="submit" value="Agregar Video" >      
            
        </form> 
        <a href="index.jsp">Regresar</a>
    </body>
</html>
