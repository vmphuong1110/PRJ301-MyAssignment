/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.lecturer;

import controller.authentication.BaseRequiredAuthenticationController;
import dal.LessionDBContext;
import entity.Account;
import entity.Attendance;
import entity.Lession;
import entity.Student;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author PHUONG
 */
public class AttendanceTakingController extends BaseRequiredAuthenticationController {
    
  @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        int leid = Integer.parseInt(req.getParameter("id"));
        LessionDBContext db = new LessionDBContext();
        ArrayList<Student> students = db.getStudentsByLession(leid);
        ArrayList<Attendance> atts = new ArrayList<>();
        Lession lession = new Lession();
        lession.setId(leid);
        for (Student student : students) {
            Attendance a = new Attendance();
            a.setLession(lession);
            a.setStudent(student);
            a.setDescription(req.getParameter("description"+student.getId()));
            a.setPresent(req.getParameter("present"+student.getId()).equals("yes"));
            atts.add(a);
        }
        db.takeAttendances(leid, atts);
        resp.sendRedirect("att?id="+leid);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        int leid = Integer.parseInt(req.getParameter("id"));
        LessionDBContext db = new LessionDBContext();
        ArrayList<Attendance> atts = db.getAttendencesByLession(leid);
        req.setAttribute("atts", atts);
        req.getRequestDispatcher("../view/lecturer/att.jsp").forward(req, resp);
    
    }
   
   
}