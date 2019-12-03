package coustomers;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.net.ssl.SSLEngineResult.Status;



public class UserDao {
	
	public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registeration","root","");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    } 
	
    public static int save(Users e){  
        int status=0;  
        try{  
            Connection con=UserDao.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into signup(username,email,password) values (?,?,?)");  
            ps.setString(1,e.getUsername());  
            ps.setString(2,e.getEmail());  
            ps.setString(3,e.getPassword());  
            System.out.println(e.getEmail());
            System.out.println(e.getPassword());
            System.out.println(e.getUsername());
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
    public static int update(Users e){  
        int status=0;  
        try{  
            Connection con=UserDao.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "update user set name=?,password=?,email=?,country=? where id=?");  
          //  ps.setString(1,e.getName());  
            ps.setString(2,e.getPassword());  
            ps.setString(3,e.getEmail());  
           // ps.setString(4,e.getCountry());  
            ps.setInt(5,e.getId());  
              
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }  
    public static int delete(int id){  
        int status=0;  
        try{  
            Connection con=UserDao.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from user where id=?");  
            ps.setInt(1,id);  
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }
    public static boolean login(Users s){  
    	  
    	 
    	 Boolean status=false;
 	    try{  
 	        Connection con=getConnection();  
  PreparedStatement ps=con.prepareStatement("select * from signup where username=? and password=?");  
 	         
 	       ps.setString(1,s.getUsername());
           ps.setString(2,s.getPassword());
           ResultSet rs=ps.executeQuery();  
           System.out.println("Username-->"+s.getPassword());
           System.out.println("Username-->"+s.getUsername());
         status =rs.next();
        System.out.println(status);
           
           
  
 	    }catch(Exception e){System.out.println(e);}  
 	   return status;
 	  
    }  
    
    
    public static Users getEmployeeById(int id){  
    	Users e=new Users();  
          
        try{  
            Connection con=UserDao.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from user where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                e.setId(rs.getInt(1));  
               // e.setName(rs.getString(2));  
                e.setPassword(rs.getString(3));  
                e.setEmail(rs.getString(4));  
               // e.setCountry(rs.getString(5));  
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return e;  
    }  
    
    public static List<Users> getAllEmployees(){  
        List<Users> list=new ArrayList<Users>();  
          
        try{  
            Connection con=UserDao.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from user");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
            	Users e=new Users();  
                e.setId(rs.getInt(1));  
               // e.setName(rs.getString(2));  
                e.setPassword(rs.getString(3));  
                e.setEmail(rs.getString(4));  
                //e.setCountry(rs.getString(5));  
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }  

}
