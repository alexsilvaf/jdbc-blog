package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.com.DTO.ClienteDTO;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Bootstrap demo</title>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"bg-white\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <header class=\"d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom\">\n");
      out.write("                    <a href=\"/\" class=\"d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none\">\n");
      out.write("                        <svg class=\"bi me-2\" width=\"40\" height=\"32\" role=\"img\" aria-label=\"Bootstrap\"><use xlink:href=\"#bootstrap\"></use></svg>\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <ul class=\"nav col-12 col-md-auto mb-2 justify-content-center mb-md-0\">\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 link-secondary\">Home</a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 link-dark\">Features</a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 link-dark\">Pricing</a></li>\n");
      out.write("                        <li><a href=\"#\" class=\"nav-link px-2 link-dark\">FAQs</a></li>\n");
      out.write("                        <li><a href=\"Cliente/pages/listar.jsp\" class=\"nav-link px-2 link-dark\">Clientes</a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                    <div class=\"col-md-3 text-end\">\n");
      out.write("                        <button type=\"button\" class=\"btn btn-outline-primary me-2\">Login</button>\n");
      out.write("                        <button type=\"button\" class=\"btn btn-primary\">Sign-up</button>\n");
      out.write("                    </div>\n");
      out.write("                </header>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <main class=\"form-signin w-25 m-auto\">\n");
      out.write("            ");
ClienteDTO cliente = new ClienteDTO();
      out.write("\n");
      out.write("            <form action=\"Cliente/actions/logar.jsp?usuario=");
      out.print(cliente.getUsuario());
      out.write("&senha=");
      out.print(cliente.getSenha());
      out.write("\" method=\"GET\">\n");
      out.write("                <h1 class=\"h3 text-center mb-3 fw-normal\">Login</h1>\n");
      out.write("\n");
      out.write("                <div class=\"form-floating\">\n");
      out.write("                    <input id=\"usuario\" class=\"form-control\" type=\"text\" name =\"usuario\" required>\n");
      out.write("                    <label for=\"usuario\">Usuário</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-floating\">\n");
      out.write("                    <input id=\"senha\" class=\"form-control\" type=\"password\" name =\"senha\" required>\n");
      out.write("                    <label for=\"senha\">Senha</label>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <button class=\"w-100 btn btn-lg btn-primary\" type=\"submit\">Sign in</button>\n");
      out.write("                <p class=\"mt-5 text-center mb-3 text-muted\">© 2017–2022</p>\n");
      out.write("            </form>\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2\" crossorigin=\"anonymous\"></script>\n");
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
