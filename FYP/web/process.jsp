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
/*String fName = "D:\\File.csv";
   String thisLine; 
  int count=0; 
  FileInputStream fis = new FileInputStream(fName);
  DataInputStream myInput = new DataInputStream(fis);
while ((thisLine = myInput.readLine()) != null)
{ count++; }
out.print("hello");
try{
HSSFWorkbook wb = new HSSFWorkbook();
HSSFSheet sheet = wb.createSheet("Excel Sheet");
HSSFRow rowhead = sheet.createRow((short)0);
rowhead.createCell((short) 0).setCellValue("First Name");
rowhead.createCell((short) 1).setCellValue("Last Name");
rowhead.createCell((short) 2).setCellValue("User Name");

//HSSFWorkbook wb = new HSSFWorkbook();
//SSFSheet sheet = wb.createSheet("Excel Sheet");
out.print(count);
HSSFRow row = sheet.createRow((short)1);
row.createCell((short)0).setCellValue(value1);
row.createCell((short)1).setCellValue(value2);
row.createCell((short)2).setCellValue(value3);

FileOutputStream fileOut = new FileOutputStream("D:\\File.csv",true);
wb.write(fileOut);
fileOut.close();
out.println("Data is saved in excel file.");
}catch ( Exception ex ){
} */
%>