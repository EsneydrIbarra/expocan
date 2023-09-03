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
    <title>Spotifayer</title>
    <style>
            @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Kaushan+Script&family=Oswald:wght@700&family=Sedgwick+Ave+Display&family=Ultra&display=swap');        body {
            color: #ffffff;            
            margin: 0;
            padding: 0;        
            background: linear-gradient(10deg, #d0177e, #652dc1, #a10684, #1C0141, #4c2882, #4b0082);
            background-size: 300% 300%;
            animation: gradientBackground 7s linear infinite;
        }
         @keyframes gradientBackground {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 60%;
            }
            100% {
                background-position: 0% 80%;
            }
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
        .button {
            text-decoration: none;
            color: #ffffff;
            background-color: #4e3179;
            padding: 20px;
            border-radius: 25px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.3s ease;
            display: inline-block;
            /* Añade margen entre los botones */
            margin: 50px; 
            animation: logoColorChange 2s linear infinite;
        }
        .button:hover {
            background-color: #1DB954;
            transform: scale(1.05);
        }
            /* Estilos para la imagen del logo que tenga movimientico y tales  */
        .logo {
            display: block;
            margin: 0 auto;
            text-align: center;
            max-width: 100%;
            padding: 10px;
            border-radius: 25px;
            animation: logoColorChange 2s linear infinite;
        }
        @keyframes logoColorChange {
            0% {
                border: 2px solid #800080;
                background-color: #4c2882;
            }
            25% {
                border: 2px solid #1e2460;
                background-color: #4A00E0;
            }
            50% {
                border: 2px solid #800080;
                background-color: #4c2882;
            }
            75% {
                border: 2px solid #1e2460;
                background-color: #a10684;
            }
            100% {
                border: 2px solid #800080;
                background-color: #4c2882;
            }
        }   
        /*etiqueta para mover la imagen de musica inferior derecha*/
         #imagen {
            position: fixed; /* Fija la posición */
            bottom: 0; /* Lo coloca en la parte inferior */
            right: 0; /* Lo coloca en el lado izquierdo */
            width: 150px; /* Ancho de la imagen */
            height: auto; /* Altura automática para mantener la proporción */
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://thedrum-media.imgix.net/thedrum-prod/s3/news/tmp/637022/playbutton.png?w=608&ar=default&fit=crop&crop=faces,edges&auto=format" 
             alt="Logo" class="logo" width="300" heigth="300">        
        <h1 style="font-family: 'Bungee', cursive; font-size: 30px; ">Reproductor De Videos</h1>    
        <ul>
            <a href="agregarVideos.jsp" class="button" >Agregar Un Nuevo Video</a>
            
            <a href="listarVideo.jsp" class="button" >Lista De Videos</a>
        </ul>
        <img id="imagen" src="https://svgsilh.com/svg/2073069.svg" 
             alt="Logo"  width="300" heigth="300" >   
    </div>
</body>
</html>