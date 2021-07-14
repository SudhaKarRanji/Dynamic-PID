package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.Random;

public final class domainA_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/db.jsp");
  }

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

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Connection con=null;
            Statement st=null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dpid", "root", "admin");
                st=con.createStatement();
                        
            }catch(Exception e){
                e.printStackTrace();
            }
            
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Domain A</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./style/main.css\">\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background-color:darkcyan;\n");
      out.write("            }\n");
      out.write("            table{\n");
      out.write("                margin-top: 40px;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"body_header\">\n");
      out.write("            <h1>Domain A Controller</h1>  \n");
      out.write("            <a href=\"domain.html\"><button class=\"button button1\">Home</button></a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"table\">\n");
      out.write("            <h2>Resource Manager</h2>\n");
      out.write("            <table id=\"customers\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>As.no</th>\n");
      out.write("                    <th>Path No</th>\n");
      out.write("                    <th>PID Prefix</th>\n");
      out.write("                    <th>PID</th>\n");
      out.write("                    <th>Start time</th>\n");
      out.write("                    <th>Expiry time</th>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");

                     
    String upperAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String lowerAlphabet = "abcdefghijklmnopqrstuvwxyz";
    String numbers = "0123456789";
    String alphaNumeric = upperAlphabet + lowerAlphabet + numbers;
    StringBuilder sb = new StringBuilder();
    Random random = new Random();
    int length = 10;
    for(int i = 0; i < length; i++) {
      int index = random.nextInt(alphaNumeric.length());
      char randomChar = alphaNumeric.charAt(index);
      sb.append(randomChar);
    }
    String randomString = sb.toString();
    System.out.println("Random String is: " + randomString);
                    
      out.write("\n");
      out.write("                ");

                    String Domain ="A";
                    String query="select * from rm where domain='"+Domain+"' ";
                    PreparedStatement check=con.prepareStatement(query);
                    System.out.println(query);
                    ResultSet rs=check.executeQuery();
                    while(rs.next()){
                    
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                    <!--<td>");
      out.print(randomString );
      out.write("</td>-->\n");
      out.write("                    <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("       <div class=\"table\">\n");
      out.write("            <h2>Border Manager</h2>\n");
      out.write("            <table id=\"customers\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Path No</th>\n");
      out.write("                    <th>PID</th>\n");
      out.write("                    <th>Expiry time</th>\n");
      out.write("                    <th>Border Router</th>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");

                   
                    
                    String query1="SELECT rm.pathno,rm.pid,rm.exp,br.router,rm.domain FROM dpid.rm INNER JOIN dpid.br on rm.domain=br.domain where rm.domain='"+Domain+"'";
                    PreparedStatement check1=con.prepareStatement(query1);
                    ResultSet rs1=check1.executeQuery();
                    while(rs1.next()){
                    
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rs1.getString(1));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString(3));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString(4));
      out.write("</td>\n");
      out.write("                    \n");
      out.write("               \n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            </table>\n");
      out.write("            </div>  \n");
      out.write("            \n");
      out.write("            <div class=\"table\">\n");
      out.write("            <h2>Service Manager</h2>\n");
      out.write("            <table id=\"customers\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Service Name</th>\n");
      out.write("                    <th>Content</th>\n");
      out.write("                    \n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                <!--service manager-->\n");
      out.write("                ");

                   
                    
                    String query2="SELECT rm.pathno,rm.pid,rm.exp,br.router,rm.domain FROM dpid.rm INNER JOIN dpid.br on rm.domain=br.domain where rm.domain='"+Domain+"'";
                    PreparedStatement check2=con.prepareStatement(query1);
                    ResultSet rs2=check2.executeQuery();
                    while(rs2.next()){
                    
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rs2.getString(1));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString(3));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString(4));
      out.write("</td>\n");
      out.write("                    \n");
      out.write("               \n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            </table>\n");
      out.write("            </div> \n");
      out.write("        \n");
      out.write("          <script>\n");
      out.write("\n");
      out.write("function timedRefresh(timeoutPeriod) {\n");
      out.write("\tsetTimeout(\"location.reload(true);\",timeoutPeriod);\n");
      out.write("}\n");
      out.write("\n");
      out.write("window.onload = timedRefresh(20000);\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>  \n");
      out.write("          \n");
      out.write("\n");
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
