<%-- 
    Document   : index
    Created on : 29/08/2023, 5:34:52 p. m.
    Author     : esney
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reproductor de Videos</title>
    <style>
        body {
            background-color: #1DB954;
            color: #ffffff;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 36px;
            text-align: center;
            margin-top: 50px;
        }

        ul {
            list-style: none;
            padding: 0;
            text-align: center;
        }

        li {
            margin: 20px;
        }

        a {
            text-decoration: none;
            color: #ffffff;
            background-color: #1DB954;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
        }

        a:hover {
            background-color: #26C16E;
        }

        .container {
            text-align: center;
            margin-top: 50px;
        }
        
        /* ESTILO PARA LOS BOTONES*/
         a.button {
            text-decoration: none;
            color: #ffffff;
            background-color: #21B01B;
            padding: 10px 20px;
            border-radius: 25px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.3s ease;
            display: inline-block;
        }

        a.button:hover {
            /* Cambia el color del boton */
           background-color: #26C16E;
           /* Cambia el tamaño al 105% al pasar el cursor */
            transform: scale(1.05); 
        }
        /*para agregar el loguito arriba*/
        .centered-logo {
    display: block;
    margin: 0 auto;
    text-align: center;
    max-width: 100%;
    /* Ajusta el espacio vertical según tus necesidades */
    padding-top: 20px; 
}
    </style>
</head>
<body>
    <div class="container">
        <img src="https://thumbs.dreamstime.com/b/bot%C3%B3n-reproducir-sobre-fondo-p%C3%BArpura-y-azul-abstracto-multimedia-audio-v%C3%ADdeo-cine-musical-con-video-un-tri%C3%A1ngulo-ne%C3%B3n-172286733.jpg" alt="Logo de la página" class="centered-logo">
        <h1>Reproductor de Videos</h1>
        <ul>
            <li><a href="agregarVideos.jsp"  class="button" >Ingresar un nuevo video </a></li>
            <li><a href="listarVideo.jsp"  class="button" >Listar videos</a></li>
        </ul>
    </div>
</body>
</html>