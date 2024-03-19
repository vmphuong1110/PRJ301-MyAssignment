/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package eventlistener;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

/**
 *
 * @author PHUONG
 */
public class ApplicationContext implements HttpSessionListener{
    ServletContext ctx=null;
    static int viewCount=0, current=0;
    public void sessionCreated(HttpSessionEvent e){
        viewCount++;
        current++;
        
        ctx=e.getSession().getServletContext();
        ctx.setAttribute("totalusers", viewCount);
        ctx.setAttribute("currentusers", current);
}
    public void sessionDestroyed(HttpSessionEvent e){
        current--;
        ctx.setAttribute("currentusers", current);
    }
}
