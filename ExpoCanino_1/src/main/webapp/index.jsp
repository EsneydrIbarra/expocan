<%-- 
    Document   : index
    Created on : 25/09/2023, 9:43:26?p.?m.
    Author     : esney
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.umariana.expocanino_1.Persistencia"%>
<%@page import="com.umariana.expocanino_1.Perro"%>
<!-- include para incluir un archivo dentro de otro, en este caso el header.  -->
<%@include file="templates/header.jsp"%>
<!-- agregar banner para interfaz principal -->
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="imagenes/banner.jpg" width="1300" height="180" class="d-inline-block align-top" alt="">    
  </a>
</nav>
        <!-- clase contenedora -->
        <div class="container p-4"> 
            <div class="row">                
                <!-- clase division por 4 columnas -->
                <div class="col-md-4"> 
                    <div class="card card-body"> 
                        <!-- tarjeta de trabajo -->
                        <form action ="SvCaninos" method = "POST" enctype="multipart/form-data">
                      <h3>Agregar nuevo perrito</h3>

                      <!-- Label e input para el nombre-->
                    <div class="input-group mb-3">
                         <label class="input-group-text" for="nombre">Nombre</label>
                      <input type="text" name="nombre" class="form-control" placeholder="Ingrese el nombre" aria-label="Ingrese el nombre" aria-describedby="basic-addon1" id="nombre" required="ingresa name">                                         
                    </div>                                            
                      <!-- Label e input para la raza-->
                      <div class="input-group mb-3">
                          <label class="input-group-text" for="raza">Raza</label>
                      <input type="text" name="raza" class="form-control" placeholder="Ingrese la raza" aria-label="Ingrese la raza" aria-describedby="basic-addon1" id="raza" required>
                    </div>
                      <!--Label e input para la foto-->                     
                      <div class="input-group mb-3">
                           <label class="input-group-text" for="foto">Foto</label>
                           <input type="file" class="form-control"  name="foto" id="foto" required>
                      </div>
                      <!--Label e inputnput para los puntos-->                   
                          <div class="input-group mb-3">
                      <label class="input-group-text" for="puntos">Puntos</label>
                        <select class="form-select" name="puntos" aria-label="Default select example" id="puntos" required>
                          <option selected>Selecione...</option>
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>                          
                        </select>                  
                       </div>
                      <!-- Label e input para la edad-->
                      <div class="input-group mb-3">
                      <label class="input-group-text" for="edad">Edad</label>
                      <input type="text" name="edad" class="form-control" placeholder="Ingrese la edad" aria-label="la edad" aria-describedby="basic-addon1" id="edad" required>
                    </div>
                       <!-- boton de agregar el perrito --> 
                            <div class="text-center">
                        <button type="submit" class="btn btn-success mx-auto">Agregar perrito</button>
                    </div>
                  </form>               
                </div>    
            </div> 
                <!-- Tabla de datos, agregamos diseño gris en table-light -->
            <div class="col-md-8">
                <table class="table  table-bordered table-light">                        
                    <thead>
                        <tr> 
                            <th>Nombre</th>
                            <th>Raza</th>
                            <th>Foto</th>
                            <th>Puntos</th>
                            <th>Edad</th>
                            <th>Acciones</th>                                                  
                </tr>
                    
                    </thead>        
                    <tbody>
                        <tr>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>
                            <div class="d-flex">
                                <a href="#" title="Ver detalle"><i class="fas fa-eye"></i></a>
                                <a href="#" title="Editar"><i class="fas fa-pencil-alt"></i></a>
                                <a href="#" title="Eliminar"><i class="fas fa-trash"></i></a>
                            </div>
                        </td>                                      
                    </tr>                    
                        <%
                    // Crear una lista para almacenar objetos Perro
                    ArrayList<Perro> misPerros = new ArrayList<>();

                    // Obtener el contexto del servlet
                    ServletContext context = getServletContext();

                    // Cargar la lista de perros desde un archivo
                    Persistencia.lectura(misPerros, context);                            

                    // Condicional que verifica si la lista de perros no es nula
                    if (misPerros != null) {
                      for (Perro perro : misPerros) {
                    %>

                      <tr>
                        <td><%= perro.getNombre() %></td>
                        <td><%= perro.getRaza() %></td>
                        <td><img src="<%= request.getContextPath() %>/foto/<%= perro.getFoto() %>" alt="foto" width="130" height="30"></td>
                        <td><%= perro.getPuntos() %></td>
                        <td><%= perro.getEdad() %></td>
                        <td>
                          <a href="#" title="Ver detalle"><i class="fas fa-eye"></i></a>
                          <a href="#" title="Editar"><i class="fas fa-pencil-alt"></i></a>
                          <a href="#" title="Eliminar"><i class="fas fa-trash"></i></a>
                        </td>
                      </tr>

                    <%
                      }
                    }
                    %>     
                    </tbody>
                    </table>
            </div>
            </div>          
        </div>    

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


<!-- include para incluir un archivo dentro de otro, en este caso el footer.-->
<%@include file= "templates/footer.jsp" %>
