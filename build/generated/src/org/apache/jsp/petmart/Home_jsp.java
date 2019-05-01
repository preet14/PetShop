package org.apache.jsp.petmart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Pet Shop</title>\n");
      out.write("<meta charset=\"iso-8859-1\">\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("  JS -->\n");
      out.write("<!-- <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write(" -->\n");
      out.write("<!--[if IE 6]><link href=\"css/ie6.css\" rel=\"stylesheet\" type=\"text/css\"><![endif]-->\n");
      out.write("<!--[if IE 7]><link href=\"css/ie7.css\" rel=\"stylesheet\" type=\"text/css\"><![endif]-->\n");
      out.write("<style>\n");
      out.write("    .featured ul{ \n");
      out.write("        display:flex;\n");
      out.write("        flex-direction: row;\n");
      out.write("        justify-content: center;\n");
      out.write("        align-items: center;\n");
      out.write("    }    \n");
      out.write("   .col-md-6{\n");
      out.write("        display:flex;\n");
      out.write("        flex-direction: column;\n");
      out.write("        justify-content: center;\n");
      out.write("        align-items: center;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"header\"> <a href=\"#\" id=\"logo\"><img src=\"images/logo.gif\" width=\"310\" height=\"114\" alt=\"\"></a>\n");
      out.write("  <ul class=\"navigation\">\n");
      out.write("    <li class=\"active\"><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("    <li><a href=\"petmart/petmart.jsp\">PetMart</a></li>\n");
      out.write("    <li><a href=\"about.jsp\">About us</a></li>\n");
      out.write("    <li><a href=\"contact.jsp\">Contact us</a></li>\n");
      out.write("    <li><a href=\"Login.jsp\">Sign-In</a></li>\n");
      out.write("    <li><a href=\"Signup.jsp\">Sign-Up</a></li>\n");
      out.write("\n");
      out.write("  </ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"body\">\n");
      out.write("  <div class=\"banner\">&nbsp;</div>\n");
      out.write("  <div class=\"container-fluid\" id=\"content\">\n");
      out.write("    <div class=\"container content col-md-12\">\n");
      out.write("      <ul>\n");
      out.write("        <li class=\"col-md-6\"> <a href=\"#\"><img src=\"images/puppy.jpg\" width=\"114\" height=\"160\" alt=\"\"></a>\n");
      out.write("          <h2>What they need</h2>\n");
      out.write("          <p>Mirum est notare quam littera gothica, quam nunc putamus parum clara m, ant epo suerit li tterar. </p>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"col-md-6\"> <a href=\"#\"><img src=\"images/cat.jpg\" width=\"114\" height=\"160\" alt=\"\"></a>\n");
      out.write("          <h2>Something good</h2>\n");
      out.write("          <p>Gothica, quam nun c putamus parum claram, anteposuerit litterarum formas humani tatis per seacula. </p>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"col-md-6\"> <a href=\"#\"><img src=\"images/koi.jpg\" width=\"114\" height=\"160\" alt=\"\"></a>\n");
      out.write("          <h2>Kinds of Fish</h2>\n");
      out.write("          <p>Quam nunc putamus parum claram, antep osuerit litter arum formas humanitatis per seacula quarta. </p>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"col-md-6\"> <a href=\"#\"><img src=\"images/bird.jpg\" width=\"114\" height=\"160\" alt=\"\"></a>\n");
      out.write("          <h2>Fun birds</h2>\n");
      out.write("          <p>Mirum est notare quam littera gothica , quam nunc putamus parum claram, anteposuerit. </p>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"sidebar\" style=\"float:left;\">\n");
      out.write("<!--      <img src=\"images/discount.jpg\" alt=\"\" width=\"300\" height=\"790\">-->\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"featured\">\n");
      out.write("    <ul>\n");
      out.write("      <li class=\"col-md-6\"><a href=\"#\"><img src=\"images/organic-and-chemical-free.jpg\" alt=\"\"></a></li>\n");
      out.write("      <li class=\"col-md-6\"><a href=\"#\"><img src=\"images/good-food.jpg\"  alt=\"\"></a></li>\n");
      out.write("      \n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<div id=\"footer\">\n");
      out.write("  \n");
      out.write("  <div id=\"footnote\">\n");
      out.write("    <div class=\"section\">Copyright @PetPaws.All rights reserved </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
