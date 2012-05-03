<%-- 
    Document   : viewpage
    Created on : May 3, 2012, 7:25:22 AM
    Author     : GuruMayoo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
         <h1>You're registered student!</h1>          
         <jsp:useBean id="ob" scope="request" class="org.ymini.mayooran.yminimayooran3Model.Student" />
         <table border="2" width="400">
             <thead>
                 <tr>
                     <th>Attributes</th>
                     <th>Values</th>
                 </tr>
             </thead>
             <tbody>
                 <tr>
                     <td>Student Name:</td>
                     <td><%=ob.getSname()%></td>
                 </tr>
                 <tr>
                     <td>Grade:</td>
                     <td><%=ob.getGrade()%></td>
                 </tr>
                 <tr>
                     <td>Subject:</td>
                     <td><%=ob.getSubject()%></td>
                 </tr>
                 <tr>
                     <td>Marks:</td>
                     <td><%=ob.getMarks()%></td>
                 </tr>
                 <tr>
                     <td></td>
                     <td></td>
                 </tr>
             </tbody>
         </table>
    </center>
        
    </body>
</html>
