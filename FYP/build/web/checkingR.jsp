<%-- 
    Document   : checkingR
    Created on : Jul 13, 2017, 8:33:02 PM
    Author     : User
--%>

<%@page import="org.rosuda.JRI.Rengine"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.rosuda.REngine.REXPMismatchException"%>
<%@page import="org.rosuda.REngine.Rserve.RConnection"%>
 <%@page import="org.rosuda.REngine.Rserve.RserveException"%>
 <%
     RConnection connection = null;
  try {
          
              connection = new RConnection();
 
             String vector = "c(1,2,3,4)";
             connection.eval("meanVal=mean(" + vector + ")");
             double mean = connection.eval("meanVal").asDouble();
           out.print("The mean of given vector is=" + mean);
         } catch (RserveException e) {
             e.printStackTrace();
         } finally{
             connection.close();
         }
        
     %>
