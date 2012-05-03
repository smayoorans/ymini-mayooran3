/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ymini.mayooran.yminimayooran3Control;

import org.ymini.mayooran.yminimayooran3Model.Student;

/**
 *
 * @author GuruMayoo
 */
public class myValidate {
    
    public boolean checkIsempty(String subject,String marks){
        
       //int mark=Integer.parseInt(marks);
        
        if("".equals(subject.trim()) || subject==null || "".equals(marks.trim()) || marks==null ){
            return false;
        }
        return true;
    }
    
    public boolean checkIsInteger(String marks){        
      
        for(int i=0;i < marks.length();i++)
        {
            if(marks.charAt(i)> 57 || marks.charAt(i)< 48){
                return false;
            }            
        }
        return true;
    }
    public boolean checkMarks(int mark){
         if( mark > 100 || mark < 0 ){
            return false;            
        }
        return true;
    }
    
        
    public Student getDetails( String sname,String grade,String subject,int marks)
    {
        Student ob=new Student();
        ob.setSname(sname);
        ob.setGrade(grade);
        ob.setSubject(subject);
        ob.setMarks(marks);
     
        return ob;
    }
}
