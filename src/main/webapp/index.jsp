<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>      
        
        <body bgcolor="lightblue">
        <center>
        <h1>Crash Course for ySchool Project!</h1>
        <h2> <marquee width=100% behavior=alternate bgcolor=yellow>Yarl IT Hub</marquee></h2>
         <h3>Assignment 2 Scenario # 3</h3>
        <form name="form1" action="MyServletPath" method="POST">
            <table border="0" width="400">
                
                    <tr style="background-color:#FFA500;">
                        <th>Student Name:</th>
                        <th>
                            <select name="sname">
                                <option>Mayooran</option>
                                <option>Nilashan</option>
                                <option>Vanaja</option>
                                <option>Thenuzan</option>
                                <option>Lukshica</option>
                                <option>Keerthica</option>
                                <option>Vijay</option>
                                <option>Mani</option>
                                <option>Tharo</option>
                                <option>Meera</option>
                               
                            </select> 
                            
                        </th>
                    </tr>         
                
                    
                    <tr style="background-color:#FFA500;">
                        <th>Grade:</th>
                        <th>
                            <select name="grade">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                                <option>14</option>
                            </select> 
                        </th>
                    </tr>
                    
                    <tr style="background-color:#FFA500;">
                        <th>Subject :</th>
                        <th><input type="text" name="subject" value="" size="30" /></th>
                    </tr>
                    
                    
                    <tr style="background-color:#FFA500;">
                        <th>Marks:</th>
                        <th><input type="text" name="marks" value="" size="30" /></th>
                    </tr>
                    
                    <tr>
                        <th>&nbsp;</th>
                        <th>&nbsp;</th>
                    </tr>
                    
                    <tr>
                        <th><input type="submit" value="Submit" name="submit"/></th>
                        <th><input type="reset" value="Reset" name="reset" /></th>
                    </tr>                 
            </table>
        </form>
        </center>
    </body>
        
    </body>
</html>
