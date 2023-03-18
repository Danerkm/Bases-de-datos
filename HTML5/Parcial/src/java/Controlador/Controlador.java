package Controlador;

import Modelo.Nomina;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Empleado;
import Modelo.Persona;


public class Controlador extends HttpServlet{
    
    
    Empleado em = new Empleado();
    Persona per = new Persona();
    Nomina nom = new Nomina();

    

        
        
 

protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException,IOException{
response.setContentType("text/html;charset=UTF-8");


    

request.getRequestDispatcher("index.jsp").forward(request, response);

    String saludo="HOLA MUNDO";
    request.setAttribute("saludo", saludo);
    
    
      String n1 = (request.getParameter("n1"));
      request.setAttribute("n1", n1);
      
      Integer n2 = Integer.parseInt(request.getParameter("n2"));
      request.setAttribute("n2", n2);
      
      Long sbase = Long.parseLong(request.getParameter("sbase"));
      request.setAttribute("sbase", sbase);
      em.setSalariobasico(sbase);
      
      Integer n4 =Integer.parseInt (request.getParameter("n4"));
      request.setAttribute("n4", n4);
      
      em.setDias(n4);
      
      Long aux = null;
      request.setAttribute("aux", aux);
      nom.set
  
      Long Object salario = null;
      request.setAttribute("salario", salario);
      em.getSalariobasico(salario);
      
      
      
}


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
