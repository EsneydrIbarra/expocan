package servlets;

import com.umariana.mundo.Video;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author esney
 */
@WebServlet(name = "svVideo", urlPatterns = {"/svVideo"})
public class svVideo extends HttpServlet {

    ArrayList<Video> misVideos = new ArrayList <>();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {         
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
       //aqui llegan los datos del get
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
     //aqui se envian los atributos pq se cambian los datos
      String idVide = request.getParameter("idVideo");
      String titulo = request.getParameter("titulo");
      String autor = request.getParameter("autor");
      String anio = request.getParameter("anio");
      String categoria = request.getParameter("categoria");
      String url = request.getParameter("url");
      String letra = request.getParameter("letra");
      
        //ingresae los datos del objeto
        int idVideo = Integer.parseInt(idVide);
        Video miVideo = new Video(Integer.parseInt(idVide), titulo, autor, anio, categoria, url, letra);
          misVideos.add(miVideo);
          
          //agregamos el arraylist al objetdo de solicitud como atributo
          request.setAttribute("misVideos", misVideos);
          
          //redireccionar a la pagina web destino
          request.getRequestDispatcher("listarVideo.jsp").forward(request, response);                         
    }
    @Override
    public String getServletInfo() 
    {
        return "Short description";
    }
} 
/** System.out.println("idVideo: "+ idVide);
        System.out.println("titulo: "+ titulo);
        System.out.println("autor: "+ autor);
        System.out.println("anio: "+ anio);
        System.out.println("categoria: "+ categoria);
        System.out.println("url: "+ url);
        System.out.println("letra: "+ letra); 
        **/
     //for usado para prueba
        /**for (Video v: misVideos)
        {
            System.out.println("---------------------");
            System.out.println("idVideo:" +v.getIdVideo());
            System.out.println("titulo:"+ v.getTitulo());
            System.out.println("autor:"+ autor);
            System.out.println("anho:"+ anio);       
            System.out.println("categoria:"+ categoria);
            System.out.println("url:"+ url);
            System.out.println("letra:"+ letra);
            System.out.println("--------------------");
        }
        **/