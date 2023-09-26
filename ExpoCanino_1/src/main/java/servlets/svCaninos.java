/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import com.umariana.expocanino_1.Perro;
import com.umariana.expocanino_1.Persistencia;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author esney
 */
@MultipartConfig
@WebServlet(name = "svCaninos", urlPatterns = {"/svCaninos"})
public class svCaninos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet svCaninos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet svCaninos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                processRequest(request, response);
                
        //Obtener la sesion actual
        HttpSession session = request.getSession();
        
        //Obtener el contexto del servlet
        ServletContext context = getServletContext();

        //Crear una lista para almacenar objetos Perro
        ArrayList<Perro> misPerros = new ArrayList<>();
        
        try {
            //Cargar la lista de perros desde un archivo
            Persistencia.lectura(misPerros, context);
        } catch (ClassNotFoundException ex) {
            //Manejar una excepcion en caso de error al leer el archivo
            Logger.getLogger(svCaninos.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Obtener datos del formulario enviados por POST
        String nombre = request.getParameter("nombre");
        String raza = request.getParameter("raza");
        
        //Obtener la parte del archivo de imagen desde la solicitud
        Part filePart = request.getPart("imagen");
        
        String puntos = request.getParameter("puntos");
        String edad = request.getParameter("edad");

        // Directorio de carga en el servidor donde se guardarán las imágenes
        String uploadPath = context.getRealPath("/foto");

        // Obtener el nombre del archivo de imagen enviado
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        // Construir la ruta completa del archivo de imagen en el servidor
        String filePath = uploadPath + File.separator + fileName;

        //Abrir un flujo de entrada para el archivo de imagen recibido
        try (InputStream fileContent = filePart.getInputStream(); 
            FileOutputStream outputStream = new FileOutputStream(filePath)) {

            int read;
            byte[] buffer = new byte[1024];
            
            //Leer el archivo de imagen y escribirlo en el servidor
            while ((read = fileContent.read(buffer)) != -1) {
                outputStream.write(buffer, 0, read);
            }
        }

        // Crear un objeto Perro con los datos ingresados y el nombre del archivo de imagen
        Perro perro = new Perro(nombre, raza, fileName, Integer.parseInt(puntos), Integer.parseInt(edad));
        
        //Agregar el objeto Perro a la lista de perros
        misPerros.add(perro);
        
        //Guardar la lista actualizada en un archivo
        Persistencia.escritura(misPerros, context);

         // Agregar la lista completa de perros como atributo en la sesión
        session.setAttribute("misPerros", misPerros);

        // Redireccionar a la página de destino
        response.sendRedirect("index.jsp");
    }
        
      

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
