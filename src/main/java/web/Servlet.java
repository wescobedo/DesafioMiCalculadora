package web;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Servlet")
public class Servlet  extends HttpServlet  {

	 @Override
	 protected void doPost(HttpServletRequest request, 
	HttpServletResponse response)  throws IOException, ServletException    {
		 
		 String num1string = request.getParameter("numero1");
		 String num2string = request.getParameter("numero2");
		 String operacion = request.getParameter("operacion");
		 		 
		 try {
			 
			 int num1 = Integer.parseInt(num1string);
			 int num2 = Integer.parseInt(num2string);
			 int resultado=0;
			 if (operacion.equals("+")){
			    resultado = num1+num2;
			 } else if (operacion.equals("-")){
				 resultado = num1-num2;
		     } else if (operacion.equals("*")){
		    	 resultado = num1*num2;
		     } else if (operacion.equals("/")){
		    	 if (num2 !=0) {
		    		 resultado = num1/num2;
		    	 } else {
		    		 response.sendRedirect("error.html");
		    		 return;
		    	 }
		     } else if (operacion.equals("&")) {
		    	 if (num1 > num2) {
		    		 request.setAttribute("numeroMayor", num1);
		    		 request.setAttribute("numeroMenor", num2);
		    	 } else {
		    		 request.setAttribute("numeroMayor", num2);
		    		 request.setAttribute("numeroMenor", num1);
		    	 }
		     } else if (operacion.equals("%")) {
		    	 if (num1 % 2 ==0) {
		    		 String numero1ParImpar="Par";
		    		 request.setAttribute("numero1ParImpar", numero1ParImpar);
		    		 
		    	 } else {
		    		 String numero1ParImpar="Impar";
		    		 request.setAttribute("numero1ParImpar", numero1ParImpar);
		    		   		 
		    	 }
		    	 if (num2 %2 ==0){
		    		 String numero2ParImpar="Par";
		    	     request.setAttribute("numero2ParImpar", numero2ParImpar);
		    	 } else {
		    		 String numero2ParImpar="Impar";
		    		 request.setAttribute("numero2ParImpar", numero2ParImpar);
		    	 }  	
		     }
		   		 		   		 	 
			 request.setAttribute("resultado", resultado);
			 request.setAttribute("operacion", operacion);
	         request.setAttribute("num1", num1);
	         request.setAttribute("num2", num2);
	    	 request.getRequestDispatcher("resultado.jsp").forward(request, response);
	  			 
		 } catch(NumberFormatException e) {
			 response.sendRedirect("error.html");
		 }
		  	
	 }	
}