<%-- 
    Document   : listarVideo
    Created on : 30/08/2023, 5:15:14 p. m.
    Author     : esney
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.umariana.mundo.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spotify</title>
    </head>
    <body>
        
        <h1>Listar videos</h1>
        
        
        <%
            //obtener el arraylist de la solicitud de la clase sv vifdeo
            ArrayList<Video> misVideos = (ArrayList<Video>)request.getAttribute("misVideos");
            
            //mostrar los datos del array
            for (Video v: misVideos)
        {
        out.println("idVideo: "+v.getIdVideo()+"<br>");
        out.println("Titulo: "+v.getTitulo()+"<br>");                 
        out.println("autor: "+ v.getAutor()+"<br>");
        out.println("anho: "+ v.getAnio()+"<br>");       
        out.println("categoria: "+ v.getCategoria()+"<br>");
        out.println("url: "+ v.getUrl()+"<br>");
        out.println("letra: "+ v.getLetra()+"<br>");
      }
            %>
            <a href="index.jsp">Regresar</a>

    </body>
</html>
