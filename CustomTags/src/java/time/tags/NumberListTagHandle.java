/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package time.tags;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.JspFragment;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author PHUONG
 */
public class NumberListTagHandle extends SimpleTagSupport {

    private String color;
    private int rows;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
             out.println(String.format("<table style='color:%s'>", color));
             
             for (int i = 0; i< rows; i++){
                 out.println("<tr>");
                 out.println("<td>" + i + "</td>");
                 out.println("</tr>");
             }

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
             out.println("</table>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in NumberListTagHandle tag", ex);
        }
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }
    
}
