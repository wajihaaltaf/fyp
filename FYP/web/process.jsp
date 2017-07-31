<%-- 
    Document   : process
    Created on : Jul 13, 2017, 6:52:54 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%
String value1=request.getParameter("first_name");
String value2=request.getParameter("email");
String value3=request.getParameter("query");
out.print(value1);
out.print(value2);
out.print(value3);
try
{
FileWriter fw = new FileWriter("D:\\ab.csv",true);
fw.append("Employee Code");
fw.append(',');
fw.append("First Name");
fw.append(',');
fw.append("Last Name");
fw.append('\n');

fw.append(value1);
fw.append(',');
fw.append(value2);
fw.append(',');
fw.append(value3);
fw.append('\n');

fw.flush();
fw.close();
out.println("<b>You are Successfully Created Csv file.</b>");
} catch (Exception e) {
e.printStackTrace();
}

%>