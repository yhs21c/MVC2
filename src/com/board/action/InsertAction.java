package com.board.action;
 
import java.sql.*;
 
import javax.servlet.http.HttpServletRequest;
 
import javax.servlet.http.HttpServletResponse;
 
import com.board.controller.CommandAction;
 
public class InsertAction implements CommandAction {
 
    @Override
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
        String title = request.getParameter("title");
        String writer = request.getParameter("writer");
        String regdate = request.getParameter("regdate");
        String content = request.getParameter("content");
        String regip = request.getRemoteAddr();
       
        try {
 
        	String driverName = "com.mysql.jdbc.Driver";   	 
            String url = "jdbc:mysql://localhost:3306/bbs?characterEncoding=utf8"; 
               
             Class.forName(driverName); 
            Connection con = DriverManager.getConnection(url,"jspexam","jsppw");
            Statement stmt = con.createStatement();
 
            String sql = "INSERT INTO BBSTABLE "+
                    
                       "(TITLE, WRITER, REGDATE, COUNT, CONTENT, REGIP) "+
        
                       "VALUES ('"+title+"', '"+writer+"', '"+regdate+"', '1', '"+content+"', '"+regip+"')";
        
       stmt.executeUpdate(sql); 
 
            con.close();
 
        } catch (Exception e) {
 
            System.err.println("Database Connection Something Problem.");
 
            System.out.println(e.getMessage());
 
            e.printStackTrace();
 
        }
 
        return "list.do";
 
    }
 
}