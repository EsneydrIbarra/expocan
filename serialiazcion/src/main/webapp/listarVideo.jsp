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
        <title>Spotifayer</title>   
        <style>
            /*EN ESTA DOCUMENTACION SE INCLUIRA LA ESTRUCTURA HTML DE ESTA CLASE LISTARVIDEO.JSP*/
            /*importamos la de khand para las letras que no son titulo*/
           @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Kaushan+Script&family=Khand:wght@500&family=Oswald:wght@700&family=Sedgwick+Ave+Display&family=Ultra&display=swap');
           /*importada la fuente de bungee para los titulos*/
           @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Kaushan+Script&family=Oswald:wght@700&family=Sedgwick+Ave+Display&family=Ultra&display=swap');
        body {
            font-family: 'Khand', sans-serif;
            /*inicio de los super estiolos guatefoc*/
            color: #ffffff;
            margin: 0;
            padding: 0;        
            background: linear-gradient(500deg, #4c2882, #652dc1, #a10684, #1C0141);
            background-size: 300% 300%;
            animation: gradientBackground 2s linear infinite; 
            /*Centra el contenido horizontalmente */
            text-align: center;
        }

        @keyframes gradientBackground {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }
        /*para el titulo*/
        h1 {
            text-align: center;
            color: #ffffff;
            padding: 10px;
        }
        /*para el boton*/
        a {
            display: block;
            text-align: center;
            background-color: #4a1d8d;
            color: #ffffff;
            text-decoration: none;
            padding: 10px;
            width: 150px;
            margin: 20px auto;
            border-radius: 50px;
        }

        a:hover {
            background-color: #1DB954;
        }
        
       .video-list .video-item {
            padding: 20px;
            border-radius: 50px;
            margin: 20px auto;
            max-width: 50%;
            background: linear-gradient(500deg, #1C0141, #a10684, #652dc1, #4c2882);
            animation: gradientBackground 1s linear infinite; 
            background-size: 300% 300%;
            border: 2px solid #630b57; 

    }
       .video-data {
            /* Agrega espacio superior entre títulos y datos */
            margin-top: 5px;
        }
       .txt-itemID {
             /* Centra el texto horizontalmente */
            text-align: center;
            /* Ajusta el ancho del bloque según tus necesidades */
            width: 30%; 
            /* Centra el bloque horizontalmente */
            margin: 0 auto; 
            /* Agrega un espacio interno de 10px al contenido */
            padding: 10px; 
            /* Agrega un borde de 2px sólido con su color */
            border: 2px solid #630b57; 
            /* Agrega bordes redondeados */
            border-radius: 10px; 
            height: 15px;
            

        }
        .txt-itemAll {
            text-align: center;
            height: 15px;
            width: 50%; 
            margin: 0 auto; 
            padding: 10px; 
            border: 2px solid #630b57; 
            border-radius: 10px; 
        }
        .txt-itemURL {
            text-align: center; 
            width: 88%; 
            margin: 0 auto; 
            padding: 10px; 
            border: 2px solid #630b57; 
            border-radius: 10px; 

        }
        </style>            
    </head>        
    <body>
        
        <h1>Lista De Super Videos</h1>
        <div class="video-list">
                    
    <%
        // Obtener el arraylist de la solicitud de la clase svVideo
        ArrayList<Video> misVideos = (ArrayList<Video>)request.getAttribute("misVideos");            
        // Mostrar los datos del array                                   
        for (Video v: misVideos)
        {
    %>
    <!-- Le cambie lo que estaba hecho con out.println para que se me haga mas facil
    manejar los margenes de los titulos y lo que estos progseguian a contener, hecho esto con 
    las etiquetas "txt" llamadas-->
    <div class="video-item">
    <p><strong>ID del Video</strong></p>
    <div class="txt-itemID" class="video-data"><%= v.getIdVideo() %></div>
    <p><strong>Titulo</strong></p>
    <div class="txt-itemAll" class="video-data"><%= v.getTitulo() %></div>
    <p><strong>Autor</strong> </p>
    <div class="txt-itemAll" class="video-data"><%= v.getAutor() %></div>    
    <p><strong>Anio</strong></p>
    <div class="txt-itemID" class="video-data"><%= v.getAnio() %></div>
    <p><strong>Categoria</strong></p>
    <div class="txt-itemID" class="video-data"><%= v.getCategoria() %></div>
    <p><strong>URL</strong></p>
    <div class="txt-itemURL" class="video-data"> <%= v.getUrl() %></div>
    <p><strong>Letra</strong></p>
    <div class="txt-itemAll" class="video-data"> <%= v.getLetra() %></div>
</div>
    <%
        }
    %>
    <!-- botoncito agregar videos-->
    <a href="agregarVideos.jsp">Regresar</a>
</div>
    </body>
</html>
