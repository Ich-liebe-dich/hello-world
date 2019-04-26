package com.user_logic;

import com.user.User;

public class UserLogic {
	
	public boolean userLogin(User u)
	{
		if("admin".equals(u.getUsername())&&"123456".equals(u.getPassword()))
		{
			return true;
		}
		return false;
	}
}
