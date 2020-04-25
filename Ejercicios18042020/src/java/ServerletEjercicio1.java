/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Juan Rodriguez
 */
@WebServlet(urlPatterns = {"/ServerletEjercicio1"})
public class ServerletEjercicio1 extends HttpServlet {

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
            out.println("<title>Servlet ServerletEjercicio1</title>");
            
            out.println("<style>");
            out.println("  *{\n" +
"                font-family: \"Trebuchet MS\", sans-serif;\n" +
"            }\n" +
"            th{\n" +
"                padding:15px;\n" +
"                color:#fff;\n" +
"                  text-shadow:1px 1px 1px #568F23;\n" +
"                border:1px solid #93CE37;\n" +
"                border-bottom:3px solid #9ED929;\n" +
"                background-color:#9DD929;\n" +
"                background:-webkit-gradient\n" +
"                    (\n" +
"                    linear,\n" +
"                    left bottom,\n" +
"                    left top,\n" +
"                    color-stop(0.02, rgb(123,192,67)),\n" +
"                    color-stop(0.51, rgb(139,198,66)),\n" +
"                    color-stop(0.87, rgb(158,217,41))\n" +
"                    );\n" +
"                background: -moz-linear-gradient\n" +
"                    (\n" +
"                    center bottom,\n" +
"                    rgb(123,192,67) 2%,\n" +
"                    rgb(139,198,66) 51%,\n" +
"                    rgb(158,217,41) 87%\n" +
"                    );\n" +
"                -webkit-border-top-left-radius:5px;\n" +
"                -webkit-border-top-right-radius:5px;\n" +
"                -moz-border-radius:5px 5px 0px 0px;\n" +
"                border-top-left-radius:5px;\n" +
"                border-top-right-radius:5px;\n" +
"            }\n" +
"            td{\n" +
"               padding:10px;\n" +
"    text-align:center;\n" +
"    background-color:#DEF3CA;\n" +
"    border: 2px solid #E7EFE0;\n" +
"    -moz-border-radius:2px;\n" +
"    -webkit-border-radius:2px;\n" +
"    border-radius:2px;\n" +
"    color:#666;\n" +
"    text-shadow:1px 1px 1px #fff; \n" +
"            }");
            
            
            out.println("</style>");
            
            out.println("</head>");
            out.println("<body>");
            //titulo
            out.println("<H2>");
            out.println("Formulario Diligenciado");
            out.println("</H2>");
            out.println("<table style=\"width:100%\" border=\"2\">");
             //nombre
            out.println("<tr>");
            out.println("<td>");
            out.println("Nombre: ");
            out.println("</td>");
            out.println("<td>");
            String nomb = request.getParameter("nombre");
            out.println(nomb + "<br>");
            out.println("</td>");
            out.println("</tr>");
            
            //apellido
            
            out.println("<tr>");
            out.println("<td>");
            out.println("Apellido: ");
            out.println("</td>");
            out.println("<td>");
            
            String apell = request.getParameter("apellido");
            out.println(apell + "<br>");
            out.println("</td>");
            out.println("</tr>");
            
            
            //cedula
            
            out.println("<tr>");
            out.println("<td>");
            out.println("Cedula: ");
            out.println("</td>");
            out.println("<td>");
            String ced = request.getParameter("cedula");
            out.println(ced + "<br>");
            out.println("</td>");
            out.println("</tr>");
            
            
            //Pass
            out.println("<tr>");
            out.println("<td>");
            out.println("Contraseña: ");
            out.println("</td>");
            out.println("<td>");
            
            String Pass1 = request.getParameter("password");
            out.println(Pass1 + "<br>");
            out.println("</td>");
            out.println("</tr>");
            
            
            //Pass2
            out.println("<tr>");
            out.println("<td>");
            out.println("Contraseña Validacion: ");
            out.println("</td>");
            out.println("<td>");
            
            String Pass2 = request.getParameter("password1");
            out.println(Pass2 + "<br>");
            out.println("</td>");
            out.println("</tr>");
            
            //FechaNacimiento
            
            out.println("<tr>");
            out.println("<td>");
            out.println("Fecha de nacimiento: ");
            out.println("</td>");
            out.println("<td>");
            
            String FechNac = request.getParameter("FechaNacimiento");
            out.println(FechNac + "<br>");
            out.println("</td>");
            out.println("</tr>");
            
            //Genero
            
            out.println("<tr>");
            out.println("<td>");
            out.println("Genero: ");
            out.println("</td>");
            out.println("<td>");
           
            String Vresult = " ";
            int Vgenero = Integer.parseInt(request.getParameter("genero"));
            if (Vgenero == 1) {
                Vresult = "Masculino";
            } else {
                Vresult = "Femenino";
            }
            out.println(Vresult + "<br>");
            out.println("</td>");
            out.println("</tr>");
            
            
            //Mensaje
            out.println("<tr>");
            out.println("<td>");
            out.println("Mensaje: ");
            out.println("</td>");
            out.println("<td>");
            
            String Vmensaje = request.getParameter("mensaje");
            out.println(Vmensaje + "<br>");
            out.println("</td>");
            out.println("</tr>");

            //out.println("<h1>Servlet ServerletEjercicio1 at " + request.getContextPath() + "</h1>");
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
