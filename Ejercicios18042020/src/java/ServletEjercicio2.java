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
@WebServlet(urlPatterns = {"/ServletEjercicio2"})
public class ServletEjercicio2 extends HttpServlet {

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
            out.println("<title>Servlet ServletEjercicio2</title>");
            out.println("</head>");
            out.println("<body>");
            //Captura del valor del html 1 valor
            int valor = Integer.parseInt(request.getParameter("numero1"));
            //Titulo primera matriz
            out.println("Tabla del primer valor:"+valor+"</br>");
            //Disminuir el valor del la variable en 1
            valor = valor - 1;
            //Creacion de primera matriz 4 x 4
            int matriz[][] = new int[4][4];
            //definir valor de cada campo de la primera matriz aumentando en 1 cada vez
            matriz[0][0] = ++valor;
            matriz[0][1] = ++valor;
            matriz[0][2] = ++valor;
            matriz[0][3] = ++valor;
            matriz[1][0] = ++valor;
            matriz[1][1] = ++valor;
            matriz[1][2] = ++valor;
            matriz[1][3] = ++valor;
            matriz[2][0] = ++valor;
            matriz[2][1] = ++valor;
            matriz[2][2] = ++valor;
            matriz[2][3] = ++valor;
            matriz[3][0] = ++valor;
            matriz[3][1] = ++valor;
            matriz[3][2] = ++valor;
            matriz[3][3] = ++valor;
            //inicio tag de primera tabla
            out.println("<table border=\"\2\"style=\"width:30%\">"); 
            //Inicio de for para imprimir los valores de la primera matriz
            for (int x = 0; x < 4; x++) {
                //fila
                out.println("<tr>");
                for (int y = 0; y < 4; y++) {
                    //columna
                   out.println("<td>");
                   out.print(matriz[x][y]);
                   //fin columna
                   out.println("</td>");
                }
                //Salto de linea
                out.println(" "+"</br>");
                //fin fila
                out.println("</tr>");   
                
            }
            //fin tabla
            out.println("</table>");
            
            //Captura del valor del html 2 valor
            int valor2 = Integer.parseInt(request.getParameter("numero2"));
            //Titulo segunda matriz
            out.println("Tabla del segundo valor:"+valor2+"</br>");
            //Disminuir el valor del la variable en 1
            valor2 = valor2 - 1;
            //Creacion de segunda matriz 4 x 4
            int matriz2[][] = new int[4][4];
            //definir valor de cada campo de la segunda matriz aumentando en 1 cada vez

            matriz2[0][0] = ++valor2;
            matriz2[0][1] = ++valor2;
            matriz2[0][2] = ++valor2;
            matriz2[0][3] = ++valor2;
            matriz2[1][0] = ++valor2;
            matriz2[1][1] = ++valor2;
            matriz2[1][2] = ++valor2;
            matriz2[1][3] = ++valor2;
            matriz2[2][0] = ++valor2;
            matriz2[2][1] = ++valor2;
            matriz2[2][2] = ++valor2;
            matriz2[2][3] = ++valor2;
            matriz2[3][0] = ++valor2;
            matriz2[3][1] = ++valor2;
            matriz2[3][2] = ++valor2;
            matriz2[3][3] = ++valor2;
            //inicio tag de segunda tabla
            out.println("<table border=\"\2\"style=\"width:30%\">"); 
            //Inicio de for para imprimir los valores de la segunda matriz
            for (int x = 0; x < 4; x++) {
                //inicio fila
                out.println("<tr>");
                for (int y = 0; y < 4; y++) {
                    //inicio fila
                   out.println("<td>");
                   out.print(matriz2[x][y]);
                   //fin fila
                   out.println("</td>");
                }
                out.println(" "+"</br>");
                //fin fila
                out.println("</tr>");   
                
            }
            //fin segunda tabla
            out.println("</table>");
            
            
            //suma de ambas arrays
            //titulo 
            out.println("Suma de Matrices: "+"</br>");
            //creacion matriz sumatoria de matrices 4 * 4
            int matrizsuma[][] = new int[4][4];
            //creacion tabla sumatoria
            out.println("<table border=\"\2\"style=\"width:30%\">"); 
            //inicio for para imprimir la matriz 4 * 4
            for (int x = 0; x < 4; x++) {
                //inicio fila
                out.println("<tr>");
                for (int y = 0; y < 4; y++) {
                    // inicio columna
                   out.println("<td>");
                   // suma de matrices 1 y 2 para generar el resultado
                   out.print(matrizsuma[x][y]=matriz[x][y]+matriz2[x][y]);
                   // fin columna
                   out.println("</td>");
                }
                out.println(" "+"</br>");
                // fin fila
                out.println("</tr>");   
                
            }
            //fin 3 tabla
            out.println("</table>");
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
