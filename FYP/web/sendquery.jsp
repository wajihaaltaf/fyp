<%-- 
    Document   : process
    Created on : Jul 13, 2017, 6:52:54 PM
    Author     : User
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@ page import ="java.sql.*" %>
<%@page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%@ page import ="java.util.Calendar" %>

<% String username = (String)request.getSession().getAttribute("userid"); %>
<% String STUDENT_ID,BOARD_EQ_NAME,Board,GROUP_NAME,DOMICILE,max_thread;
   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp",
            "root", "");
   Statement st = con.createStatement();
  ResultSet rs;
  rs = st.executeQuery("select * from login_info where LOGIN_ID='" + username+"'");
 //rs = st.executeQuery("select * from login_info where LOGIN_ID=" + username);
    if (rs.next()) {
       STUDENT_ID=(String)rs.getString("STUDENT_ID");
       BOARD_EQ_NAME=(String)rs.getString("BOARD_EQ_NAME");
       BOARD_EQ_NAME= '"'+BOARD_EQ_NAME+'"';
       Board=(String)rs.getString("Board");
       GROUP_NAME=(String)rs.getString("GROUP_NAME");
       DOMICILE=(String)rs.getString("DOMICILE");
       max_thread=(String)rs.getString("max_thread");
       int foo = Integer.parseInt(max_thread);
       foo= foo+1;
       max_thread=String.valueOf(foo);
       PreparedStatement stx = con.prepareStatement("UPDATE login_info set max_thread='" + max_thread+"'");
       stx.executeUpdate();
       String value1=request.getParameter("textarea");
       value1= '"'+value1+'"';
       Calendar cal = Calendar.getInstance();
       cal.add(Calendar.DATE, 1);
       SimpleDateFormat format1 = new SimpleDateFormat("dd/MM/yyyy HH:mm");
       String formatted = format1.format(cal.getTime());
       cal = Calendar.getInstance();
       cal.add(Calendar.DATE, 1);
       format1 = new SimpleDateFormat("HH:mm");
       String time = format1.format(cal.getTime());
try
{
FileWriter fw = new FileWriter("D:\\ab.csv",true);

fw.append(STUDENT_ID);
fw.append(',');
fw.append(username);
fw.append(',');
fw.append(BOARD_EQ_NAME);
fw.append(',');
fw.append(Board);
fw.append(',');
fw.append(GROUP_NAME);
fw.append(',');
fw.append(DOMICILE);
fw.append(',');
fw.append(max_thread);
fw.append(',');
fw.append(value1);
fw.append(',');
fw.append(',');
fw.append(formatted);
fw.append(',');
fw.append(time);
fw.append(',');
fw.append("first");
fw.append('\n');

fw.flush();
fw.close();
out.println("<b>You have Successfully Created Csv file.</b>");
} catch (Exception e) {
e.printStackTrace();
}
    } else {
        out.println("Error in fetching data");
    }

%>
