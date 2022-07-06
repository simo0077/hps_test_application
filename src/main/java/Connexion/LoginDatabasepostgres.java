package Connexion;

import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;

import Model.Userbean;

public class LoginDatabasepostgres {


   public  ArrayList getUsers() {
	  Connection c = null;
	  Statement stmt = null;
      try {
         Class.forName("org.postgresql.Driver");
          c = DriverManager
            .getConnection("jdbc:postgresql://localhost:5432/users",
            "postgres", "root");
         System.out.print("connection success");
          stmt = c.createStatement();
			String sql ="select * from users";
			ResultSet rs = stmt.executeQuery( "SELECT * FROM users;" );
			ArrayList<Userbean> users = new ArrayList<Userbean>();
			while ( rs.next() ) {
				Long id = (long) rs.getInt("id");
	            String  name = rs.getString("name");
	            String  address = rs.getString("address");
				users.add(new Userbean(id,name,address));
	         }
			return users;
      } catch (Exception e) {
         e.printStackTrace();
         System.err.println(e.getClass().getName()+": "+e.getMessage());
         System.exit(0);
         return null;
      }
     
      
   }
   
   
}