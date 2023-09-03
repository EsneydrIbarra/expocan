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
        <title>Spotifayer</title>
       <style>
           /*EN ESTA DOCUMENTACION SE INCLUIRA LA ESTRUCTURA HTML DE ESTA CLASE AGREGARVIDEOS.JSP*/
           /*importamos la de khand para las letras que no son titulo*/
           @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Kaushan+Script&family=Khand:wght@500&family=Oswald:wght@700&family=Sedgwick+Ave+Display&family=Ultra&display=swap');
           /*importada la fuente de bungee para los titulos*/
           @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Kaushan+Script&family=Oswald:wght@700&family=Sedgwick+Ave+Display&family=Ultra&display=swap');
        body {
            font-family: 'Khand', sans-serif;
            /* inicio de los super estiolos guatefoc*/
            color: #ffffff;
            margin: 0;
            padding: 0;        
            background: linear-gradient(400deg, #800080, #4e0041, #4b0082, #652dc1, #42214b, #a10684, #1C0141);
            background-size: 300% 300%;
            animation: gradientBackground 5s linear infinite;          
        }

        @keyframes gradientBackground {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 60%;
            }
            100% {
                background-position: 0% 60%;
            }
        }
        
        /* centra horizontalmente el texto y el formulario */
         h1, form, a {
            text-align: center; 
            /* Centra verticalmente el formulario y espacio entre elementos */
            margin: 20px auto;
            /* Establece un ancho máximo para el contenido */
            max-width: 500px; 
            
        }
        /* Fondo semitransparente para el formulario */
        form {            
            background-color: rgba(0, 0, 0, 0.5); 
            padding: 20px;
            border-radius: 50px;
            
        }

        /* Estilos para los campos de entrada y etiquetas */
        
        label, input, textarea {
            color: #ffffff;
            display: block;
            /* centra verticalmente los labels y etiquetas */
            margin: 2px auto; 
            width: 80%;
            border-radius: 50px;
            line-height: 1.9;
            /* Alinea el texto al centro */
            text-align: center;
        }      
        input[type="submit"] {
            background-color: #4a1d8d;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #1DB954;
            
        }
        input[type =" text "], textarea {
            
            background: linear-gradient(200deg, #1C0141, #a10684, #652dc1, #4c2882);
            background-size: 300% 300%;
            animation: gradientBackground 2s linear infinite;
            
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
        
       /* Estilos para los botones */
        .button {
            text-decoration: none;
            color: #ffffff;
            background-color: #4a1d8d;
            padding: 10px 20px;
            border-radius: 50px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.3s ease;
            margin: 10px;
             /* Establece el ancho fijo para ambos botones */
            width: 150px;
        }

        .button:hover {
            background-color: #1DB954;
            transform: scale(1.05);
        }

        /* Clases para controlar la ubicación de los botones */
        .left {
            /* Empuja el botón "Regresar" hacia la izquierda */ 
            margin-right: auto;         
        }

        .right {
            /* Empuja el botón "Agregar" hacia la derecha */
            margin-left: auto; 
        }

        /* Contenedor flexbox para alinear los botones horizontalmente */
        .button-container {
            display: flex;
            justify-content: space-between;
        }
        /* cambiar el color del texto de marcador de posición de referencia*/
        ::placeholder {
            color: #d8bfd8; 
        }
        
        /* Aplica una animación de movimiento */
        @keyframes moveUpDown {
            0% {
                /* Mueve la imagen hacia arriba */
                transform: translateY(-10px); 
            }
            50% {
                /* Mueve la imagen hacia abajo */
                transform: translateY(10px); 
            }
            100% {
                /* Mueve la imagen hacia arriba nuevamente */
                transform: translateY(-10px); 
            }
        }

        /* Aplica la animación a la imagen */
        #imagen-musica {
             /* Repite la animación de forma infinita */
            animation: moveUpDown 4s ease infinite;
            max-width: 200px;
            height: 200px;
            /*mueve la imagen hacia abajo*/
            margin-top: 300px;
            /*mueve la imagen hacia la derecha*/
            margin-right: 20px;
            /* Ajusta el margen izquierdo según tu preferencia */
            margin-left: 80px; 
            /*  ayudar a que el texto se mantenga alrededor de la imagen y no arriba o debnajo o mal ubnicada */      
            float: left;
            border-radius: 25px;
        }
        #imagen-musica2 {            
             /* Repite la animación de forma infinita */
            animation: moveUpDown 4s ease infinite;
            /* Ajusta el ancho máximo de la nueva imagen */
            max-width: 220px; 
            /* Mantén la proporción original de la imagen */
            height: 200px; 
             /* Mueve la imagen hacia abajo */
            margin-top: 300px;
            /* Mueve la imagen hacia la derecha */            
            margin-right: 80px; 
            /* Hace que la nueva imagen flote hacia la derecha */
            float: right; 
            border-radius: 25px;
        }
    </style>
    </head>
    <body>
        <img id="imagen-musica" src="https://estaticos.elcolombiano.com/binrepository/780x565/0c0/0d0/none/11101/EDTW/nostalgia-musica-1_42537840_20230605193530.jpg"
            alt="imagen">
        <img id="imagen-musica2" src="https://us.123rf.com/450wm/pitinan/pitinan2307/pitinan230729460/209505922-captura-sincera-de-una-emocionada-fiesta-de-una-joven-africana-con-auriculares-hermosa-generativa.jpg?ver=6"
              alt="imagen">
        
       <h1 style="font-family: 'Bungee', cursive; font-size: 20px; position: absolute; top: -20px; left: 10px;">Reproductor de Videos</h1>

        <form action="svVideo" method = "POST">
        <h1 style="font-family: 'Bungee', cursive; font-size: 25px; ">Tu Selección de Videos</h1>    

            <label for ="idVideo"idVideo width="30%"  >id del video</label>
            <input type =" text " name="idVideo" placeholder="Escriba el ID del video"><br>

            <label for="titulo"> Titulo</label>
            <input type = " text " name="titulo" placeholder="Escriba el título del video"><br>
            
            <label for = "autor" > Autor</label>
            <input type = " text " name="autor" placeholder="Escriba el nombre del autor"><br>
            
            <label for = "anio">Año</label>
            <input type = " text " name="anio" placeholder="Escriba el año del video"><br>
            
            <label for = "categoria" >Categoria</label>
            <input type = " text " name="categoria" placeholder="Escriba la categoría del video"><br>
            
            <label for = "url">URl</label>
            <input type = " text " name="url" placeholder="Escriba la URL del video"><br>
            
            <label for = "letra">Letra</label>
            <textarea name = " letra " rows="5" placeholder="Escriba la letra del video"></textarea><br>
            <!-- div que usa la etiqueta para mover bien los botones y si funciono que ingeniero soy -->
            <div class="button-container">
             <!-- use las clases del boton anterior pero aca y le puse la letra y a la de agg le puse tamaño paq empareje-->
             <a href="index.jsp" class="button" class="button right" style="font-family: 'Khand', sans-serif;">Regresar</a>
            <input style="font-family: 'Khand', sans-serif;font-size: 15px;" type="submit" value="Agregar Video" class="button" class="button left">            
            </div>
        </form> 
       
    </body>
</html>
