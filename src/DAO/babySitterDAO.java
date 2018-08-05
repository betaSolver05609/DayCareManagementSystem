package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import bean.babySitter;
import bean.toddler;

public class babySitterDAO {
	public static int update(toddler td, String name) throws SQLException
	{
		System.out.println(name+"inside DAO");
		Connection con=DatabaseUtil.getConnection();
		int bsId=babySitterDAO.getbsID(name);
				
		PreparedStatement st=con.prepareStatement("insert into Toddler_1418080 values(my_seq_1418080.nextval, ? , ?, ?)");
		st.setString(1, td.getToddlerName());
		st.setInt(2, td.getAge());
		st.setInt(3, bsId);
		int status=st.executeUpdate();
		if(status>0)
		{
			status=babySitterDAO.updateBsId(name);
		}
		return status;
		
	}
	
		
	public static int updateBsId(String name) throws SQLException
	{
		System.out.println(name+"insideUpdate");
		Connection con=DatabaseUtil.getConnection();
		Statement ps=con.createStatement();
		int status=0;
		status=ps.executeUpdate("update BabySitter_1418080 set bsStatus='Tagged' where bsName='"+name+"'");
		return status;
		
	}
	public static int getbsID(String name) throws SQLException
	{
		Connection con=DatabaseUtil.getConnection();
		Statement ps=con.createStatement();
		ResultSet rs=ps.executeQuery("select bsId from BabySitter_1418080 where bsName='"+name+"'");
		if(rs.next())
		{
			return rs.getInt(1);
		}
		else
			return 0;
		
	}
	public static HashMap<toddler, babySitter> getDetails() throws SQLException
	{
		HashMap<toddler, babySitter> hm=new HashMap<toddler, babySitter>();
		Connection con=DatabaseUtil.getConnection();
		Statement ps=con.createStatement();
		ResultSet rs=ps.executeQuery("select * from Toddler_1418080 a inner join BABYSITTER_1418080 b on a.bsId=b.bsId");
		while(rs.next())
		{
			toddler t=new toddler();
			babySitter b=new babySitter();
			t.setId(rs.getInt(1));
			t.setToddlerName(rs.getString(2));
			t.setAge(rs.getInt(3));
			b.setId(rs.getInt(4));
			b.setName(rs.getString(6));
			b.setAge(rs.getInt(7));
			b.setExperience(rs.getInt(8));
			b.setType(rs.getString(9));
			b.setStatus(rs.getString(10));
			hm.put(t, b);
		}
		return hm;
		
	}
	public static int updateFinal(int id, String toddlerName, String babySitterName) throws SQLException
	{
		Connection con=DatabaseUtil.getConnection();
		Statement ps=con.createStatement();
		int status2=0;
		ps=con.createStatement();
		status2=ps.executeUpdate("update Toddler_1418080 set toddlerName='"+toddlerName+"'"+" where toddlerid="+id);
		if(status2>0)
		{
			status2=babySitterDAO.getId(toddlerName);
		}
		return status2;
		
	}
	public static int getId(String toddlerName) throws SQLException
	{
		Connection con=DatabaseUtil.getConnection();
		Statement ps=con.createStatement();
		ResultSet rs=ps.executeQuery("select toddlerId from Toddler_1418080 where toddlerName='"+toddlerName+"'");
		int status=0;
		if(rs.next())
		{
			status=rs.getInt(1);
		}
		return status;
	}
	public static ArrayList<String> getName() throws SQLException
	{
		System.out.println("Entering here");
		ArrayList<String> al=new ArrayList<String>();
		Connection con=DatabaseUtil.getConnection();
		System.out.println("Hello This is"+con);
		Statement ps=con.createStatement();
		ResultSet rs=ps.executeQuery("select BSNAME from BABYSITTER_1418080");
		while(rs.next()){
			al.add(rs.getString(1));
		}
		return al;
	}


	}
