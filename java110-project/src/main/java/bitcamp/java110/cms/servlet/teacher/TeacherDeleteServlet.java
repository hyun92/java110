package bitcamp.java110.cms.servlet.teacher;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;

import bitcamp.java110.cms.service.TeacherService;

@WebServlet("/teacher/delete")
public class TeacherDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(
            HttpServletRequest request, 
            HttpServletResponse response) 
            throws ServletException, IOException {

        int no = Integer.parseInt(request.getParameter("no"));
        
        ApplicationContext iocContainer=  
                (ApplicationContext)this.getServletContext().getAttribute("iocContainer");
       
        
        TeacherService teacherService = 
                iocContainer.getBean(TeacherService.class);
        
        try {
            teacherService.delete(no);
            response.sendRedirect("list");
            
        } catch (Exception e) {
            request.setAttribute("error", e);
            request.setAttribute("message", "강사 삭제 오류!");
            request.setAttribute("refresh", "3;url=list");
            
            request.getRequestDispatcher("/error").forward(request, response);
        }
        
    }

}
