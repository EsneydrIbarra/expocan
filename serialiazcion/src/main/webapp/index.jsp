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
    <title>Spotifyyy</title>
    <style>
@import url('https://fonts.googleapis.com/css2?family=Bungee&family=Kaushan+Script&family=Oswald:wght@700&family=Sedgwick+Ave+Display&family=Ultra&display=swap');        body {
            color: #ffffff;            
            margin: 0;
            padding: 0;        
            background: linear-gradient(55deg, #d0177e, #652dc1, #a10684, #1C0141);
            background-size: 300% 300%;
            animation: gradientBackground 20s linear infinite;
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
            animation: logoColorChange 10s linear infinite;

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
            animation: logoColorChange 10s linear infinite;
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
        
    </style>
</head>
<body>
    <div class="container">
        <img src="https://thedrum-media.imgix.net/thedrum-prod/s3/news/tmp/637022/playbutton.png?w=608&ar=default&fit=crop&crop=faces,edges&auto=format" 
             alt="Logo" class="logo" width="300" heigth="300">       
        <h1 style="font-family: 'Bungee', cursive; font-size: 30px; ">Reproductor de Videos</h1>    
        <ul>
            <a href="agregarVideos.jsp" class="button" >Ingresar un nuevo video</a>
            <a href="listarVideo.jsp" class="button" >Listar videos</a>

        </ul>
    </div>
</body>
</html>