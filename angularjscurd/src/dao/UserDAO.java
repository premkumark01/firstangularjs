package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


import bean.User;
import util.DBConnect;

public class UserDAO {
	
	  public User saveUser(User u){
	        
	        String sql = "insert into user (name, email, age, password) values ('"+u.getName()+"','"+u.getEmail()+"','"+u.getAge()+"','"+u.getPassword()+"')";
	        
	        try {
	            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
	            if(value > 0){
	                return u;
	            }
	        } catch (SQLException ex) {
	            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	    
	        return null;
	    
	    }
	  
	  public User getUser(String email){
	        
		  User u = new User();
	        
	        try {
	            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery("select * from user where email='"+email+"'");
	            while(rs.next()){
	                u.setUid(rs.getInt("uid"));
	                u.setName(rs.getString("name"));
	                u.setEmail(rs.getString("email"));
	                u.setAge(rs.getInt("age"));
	                u.setPassword(rs.getString("password"));
	                
	            }
	            return u;
	        } catch (SQLException ex) {
	            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        
	        return null;
	               
	        
	    }
	    
	

}
