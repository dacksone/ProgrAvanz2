package org.apache.jsp.Ejercicio2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.DecimalFormat;

public final class Ejercicio2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("            *{\n");
      out.write("                font-family: \"Trebuchet MS\", sans-serif;\n");
      out.write("                margin: 0px;\n");
      out.write("                padding: 0px;\n");
      out.write("            }\n");
      out.write("            body {\n");
      out.write("                background: #ffffff;                \n");
      out.write("            }\n");
      out.write("            #PrimerContenedor{\n");
      out.write("                width: 1200px;\n");
      out.write("                margin: auto;\n");
      out.write("                margin-top: 20px;\n");
      out.write("                margin-bottom: 20px;                \n");
      out.write("            }\n");
      out.write("            header{\n");
      out.write("                height: 50px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            header h1{\n");
      out.write("                font-size: 50px;\n");
      out.write("                text-align: center;\n");
      out.write("                line-height: 50px;\n");
      out.write("            }\n");
      out.write("            #sectionleft{\n");
      out.write("                width: 100%;\n");
      out.write("                height: 200px;\n");
      out.write("\n");
      out.write("                float: left;\n");
      out.write("                margin-top: 10px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("                margin-right: 10px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            #sectionrigth{\n");
      out.write("                width: 0%;\n");
      out.write("                height: 400px;\n");
      out.write("\n");
      out.write("                float: right;\n");
      out.write("                margin-top: 10px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("                margin-right: 10px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            th{\n");
      out.write("                padding:15px;\n");
      out.write("                color:#fff;\n");
      out.write("                text-shadow:1px 1px 1px #568F23;\n");
      out.write("                border:1px solid #93CE37;\n");
      out.write("                border-bottom:3px solid #9ED929;\n");
      out.write("                background-color:#9DD929;\n");
      out.write("                background:-webkit-gradient\n");
      out.write("                    (\n");
      out.write("                    linear,\n");
      out.write("                    left bottom,\n");
      out.write("                    left top,\n");
      out.write("                    color-stop(0.02, rgb(123,192,67)),\n");
      out.write("                    color-stop(0.51, rgb(139,198,66)),\n");
      out.write("                    color-stop(0.87, rgb(158,217,41))\n");
      out.write("                    );\n");
      out.write("                background: -moz-linear-gradient\n");
      out.write("                    (\n");
      out.write("                    center bottom,\n");
      out.write("                    rgb(123,192,67) 2%,\n");
      out.write("                    rgb(139,198,66) 51%,\n");
      out.write("                    rgb(158,217,41) 87%\n");
      out.write("                    );\n");
      out.write("                -webkit-border-top-left-radius:5px;\n");
      out.write("                -webkit-border-top-right-radius:5px;\n");
      out.write("                -moz-border-radius:5px 5px 0px 0px;\n");
      out.write("                border-top-left-radius:5px;\n");
      out.write("                border-top-right-radius:5px;\n");
      out.write("            }\n");
      out.write("            td{\n");
      out.write("                padding:10px;\n");
      out.write("                text-align:center;\n");
      out.write("                background-color:#DEF3CA;\n");
      out.write("                border: 2px solid #E7EFE0;\n");
      out.write("                -moz-border-radius:2px;\n");
      out.write("                -webkit-border-radius:2px;\n");
      out.write("                border-radius:2px;\n");
      out.write("                color:#666;\n");
      out.write("                text-shadow:1px 1px 1px #fff; \n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"PrimerContenedor\" >\n");
      out.write("            <header>\n");
      out.write("                <h1 >Ejercicio 2 </h1>\n");
      out.write("            </header>\n");
      out.write("\n");
      out.write("            <div>\n");
      out.write("\n");
      out.write("                <H2>Tabla de notas</H2>\n");
      out.write("                <font face=\"Arial\">\n");
      out.write("                <table border=\"2\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Nombre de estudiante</th>\n");
      out.write("                        <th>Nota 1</th>\n");
      out.write("                        <th>Nota 2</th>\n");
      out.write("                        <th>Nota 3</th>\n");
      out.write("                        <th>Promedio</th>\n");
      out.write("                        <th>Estado</th>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <!--Nombre -->\n");
      out.write("                        <td>\n");
      out.write("                            ");

                                String vNombre = request.getParameter("nombre");
                                out.println(vNombre);                            
                            
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <!--Nota1 -->\n");
      out.write("                        <td>\n");
      out.write("                            ");

                                double vNota1 = Double.parseDouble(request.getParameter("nota1"));
                                out.println(vNota1);                            
                            
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <!--Nota2 -->\n");
      out.write("                        <td>\n");
      out.write("                            ");

                                double vNota2 = Double.parseDouble(request.getParameter("nota2"));
                                out.println(vNota2);                            
                            
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <!--Nota3 -->\n");
      out.write("                        <td>\n");
      out.write("                            ");

                                double vNota3 = Double.parseDouble(request.getParameter("nota3"));
                                out.println(vNota3);                            
                            
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <!-- Promedio -->\n");
      out.write("                        <td>\n");
      out.write("                            ");

                                double Promedio = (vNota1 + vNota2 + vNota3)/3;
                                DecimalFormat formato1 = new DecimalFormat("#.00");
                                out.println(formato1.format(Promedio));                            
                            
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <!-- Estado \n");
      out.write("                        si el valor es mayor a 7.5 es aprobado\n");
      out.write("                        Si el valor es menor -> desaprobado\n");
      out.write("                        -->\n");
      out.write("                        <td>\n");
      out.write("                            ");

                                if (Promedio >= 7.5){
                                    out.println("Aprobado");
                                } else {
                                    out.println("Desaprobado");
                                }
                            
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("            <div>\n");
      out.write("        <div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
