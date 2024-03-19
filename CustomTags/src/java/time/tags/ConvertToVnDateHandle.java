/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package time.tags;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PHUONG
 */
public class ConvertToVnDateHandle extends SimpleTagSupport {

    private String value;

    public void setValue(String value) {
        this.value = value;
    }

    /**
     * Called by the container to invoke this tag.The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     *
     * @throws jakarta.servlet.jsp.JspException
     * @throws java.io.IOException
     */
    @Override
    public void doTag() throws JspException, IOException {
        if (value != null) {
            DateFormat inputFormat = new SimpleDateFormat("M-dd-yyyy");
            DateFormat outputFormat = new SimpleDateFormat("'Ngay' dd', thang' M', nam' yyyy");

            try {
                Date date = inputFormat.parse(value);
                String formattedDate = outputFormat.format(date);

                JspWriter out = getJspContext().getOut();
                out.println(formattedDate);

            } catch (ParseException ex) {
                Logger.getLogger(ConvertToVnDateHandle.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }
}
