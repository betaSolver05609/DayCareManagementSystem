package Service;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import DAO.babySitterDAO;
import bean.babySitter;
import bean.toddler;
public class Service {
	public static int register(toddler td, String name) throws SQLException
	{
		int status=0;
		status=babySitterDAO.update(td, name);
		return status;
	}
	public static HashMap<toddler, babySitter> view() throws SQLException
	{
		HashMap<toddler, babySitter> hm=new HashMap<toddler, babySitter>();
		hm=babySitterDAO.getDetails();
		return hm;
	}
	public static int updateFinal(int id, String toddlerName, String babySitterName) throws SQLException
	{
		int status=0;
		status=babySitterDAO.updateFinal(id, toddlerName, babySitterName);
		return status;
	}
	
	public static ArrayList<String> getBabySitterName() throws SQLException
	{
		ArrayList<String> al=babySitterDAO.getName();
		return al;
	}

}
