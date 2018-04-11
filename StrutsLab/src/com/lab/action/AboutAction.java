package com.lab.action;


import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.lab.dao.DataBaseDao;;


public class AboutAction extends ActionSupport {

	@Override
	public String execute() throws Exception{
		//获得ActionContext
		ActionContext ac = ActionContext.getContext();
		//然后连接数据库
		DataBaseDao db = new DataBaseDao();
		Connection connection = db.getConnection();
		//书写sql语句
		String sql = "";
		//执行SQL语句
		ResultSet rs = db.findSQL(connection, sql);
		//然后对rs中的数据进行接收和处理
		
		
		return SUCCESS;
	}
}
