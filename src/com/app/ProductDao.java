package com.app;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.ListIterator;


public class ProductDao {
	

	public static Connection getConnection()
	{
		
		
		 
	        Connection con=null;  
	        try{  
	            Class.forName("com.mysql.jdbc.Driver");  
	            System.out.println("Driver found");
	            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registeration","root","");
	            System.out.println("Connection Established");
	        }catch(Exception e)
	        {System.out.println(e);}  
	        return con;  	
	}
	
	public static int saveProduct(Product p)
	{
		 int status=0;  
	        try{  
	            Connection con=ProductDao.getConnection();  
	            PreparedStatement ps=con.prepareStatement(  
	                         "insert into product(isbm,title,author,publisher,descriptions,price,image) values (?,?,?,?,?,?,?)");
	           ResultSet rs=null;
	            FileInputStream fis=null;
	            File image=new File(p.getBase64Image());
	            
	            ps.setInt(1, p.getId());
	            ps.setString(2,p.getTitle());
	            ps.setString(3, p.getAuthor());
	            ps.setString(4, p.getPublisher());
	            ps.setString(5, p.getDescription());
	            ps.setDouble(6, p.getPrice());
	            fis=new FileInputStream(image);
	            System.out.println(p.getBase64Image());
	            ps.setBinaryStream(7, (InputStream)fis,(int) (image.length()));
	            
	            status=ps.executeUpdate();
	            con.close();
	        	}
	        catch(Exception e)
	        {
	        	
	            e.printStackTrace();
	        }
	       
	        return status;
		}
	public static List<Product> getProduct() throws SQLException
	{
		List<Product>list=new ArrayList<Product>();
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from product");
			ResultSet rs=ps.executeQuery();
			
			
			
			while(rs.next())
			{
				Blob blob=null;
				
				blob=rs.getBlob("image");
				InputStream is=blob.getBinaryStream();
				ByteArrayOutputStream os=new ByteArrayOutputStream();
				byte [] buffer=new byte[4096];
				int bytesRead=-1;
				while((bytesRead=is.read(buffer))!=-1)
				{
					os.write(buffer,0,bytesRead);
				}
				byte[] imagesBytes=os.toByteArray();
				String base64Image=Base64.getEncoder().encodeToString(imagesBytes);
				is.close();
				os.close();
				
				Product p=new Product();
				
				p.setId(rs.getInt("isbm"));
				p.setTitle(rs.getNString("title"));
				p.setAuthor(rs.getString("author"));
				p.setPublisher(rs.getString("publisher"));
				p.setDescription(rs.getString("descriptions"));
				p.setPrice(rs.getDouble("price"));
				p.setBase64Image(base64Image);
				
				
				
				list.add(p);	
			}
		}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
		return list;
		}
		
	}
	            
	            
	            
	
	
	

	

