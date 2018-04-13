package com.lab.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 
* Copyright: Copyright (c) 2018 songzongyao
* 
* @ClassName: DataBaseDao.java
* @Description: 该类的功能描述
*
* @version: v1.0.0
* @author: songzongyao
* @date: 2018年4月13日 上午9:32:12 
*
* Modification History:
* Date         Author          Version            Description
*---------------------------------------------------------*
* 2018年4月13日     songzongyao           v1.0.0               修改原因
 */
public class DataBaseDao {
	
	/**
	 * 
	* @Function: DataBaseDao.java
	* @Description: 获得数据库连接的函数。如果改变了数据库的使用者，需要在此函数中更改数据库连接信息
	*
	* @return：返回Connection conn一个数据库连接
	* @throws：异常描述
	*
	* @version: v1.0.0
	* @author: songzongyao
	* @date: 2018年4月13日 上午9:35:26 
	*
	* Modification History:
	* Date         Author          Version            Description
	*---------------------------------------------------------*
	* 2018年4月13日     songzongyao           v1.0.0               新建函数
	 */
	public Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		// 我个人的mysql数据库的端口号  user是数据库的名称。需要修改
		String url = "jdbc:mysql://localhost:3306/a214";
		//mysql的用户名和密码
		String db_username = "root";
		String db_password = "123";
		
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, db_username, db_password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}


	/**
	 * 
	* @Function: DataBaseDao.java
	* @Description: 根据sql语句执行查询，并将查询结果返回
	*
	* @param:Connection conn 数据库连接
	* @param：String sql 需要执行的sql语句
	* @return：ResultSet rs1 数据库查询结果的类型
	* @throws：异常描述
	*
	* @version: v1.0.0
	* @author: songzongyao
	* @date: 2018年4月13日 上午9:33:12 
	*
	* Modification History:
	* Date         Author          Version            Description
	*---------------------------------------------------------*
	* 2018年4月13日     songzongyao           v1.0.0               修改原因
	 */
	public ResultSet findSQL(Connection conn,String sql){
		
		Statement stmt = null;
		try{
			stmt = conn.createStatement();
		}catch(SQLException e){
			e.printStackTrace();	
		}
		//执行结果
		ResultSet rs1 = null;
		try{
			rs1 = stmt.executeQuery(sql);
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return rs1;
		
	}

	
	//关闭数据库连接的函数，暂时不太适用。先放在这里
	public void closeAll(Connection conn,Statement pstmt, ResultSet rs) {
		
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
}

