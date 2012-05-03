/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ymini.mayooran.yminimayooran3Control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.ymini.mayooran.yminimayooran3Model.Student;

/**
 *
 * @author GuruMayoo
 */
@WebServlet(name = "MyServlet", urlPatterns = {"/MyServletPath"})
public class MyServlet extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sname;
        String grade;
        String subject;
        String marks;
        
        sname=request.getParameter("sname");
        grade=request.getParameter("grade");
        subject=request.getParameter("subject");        
        marks=request.getParameter("marks");
        
        myValidate v=new myValidate();        
        boolean result=v.checkIsempty(subject, marks);        
     
        if(result){
            boolean re=v.checkIsInteger(marks);
            if(re){
                int mark=Integer.parseInt(marks);
                boolean marksresult=v.checkMarks(mark);            
                
                if(marksresult){                    
                    
                    Student ob= v.getDetails(sname,grade,subject,mark);
                    request.setAttribute("ob",ob);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("viewpage.jsp");
                    dispatcher.forward(request,response);
                    if(mark >=80){
                        System.out.println("Very Well done "+ob.getSname());
                    }
                }
                else{               
                    response.sendRedirect("errorpage2.jsp");
                }
            }
            else{               
                 response.sendRedirect("errorpage3.jsp");
            }
            
            
       }
       else{
            response.sendRedirect("errorpage.jsp");           
        }
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
