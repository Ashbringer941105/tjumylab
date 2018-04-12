package com.lab.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @date 2018.04.11
 * @author 宋宗垚
 *	数据库连接类
 *	有三个函数，一个是getConnection()获得连接
 *	第二个是executeSQL输入连接和sql语句执行sql语句返回结果
 * 	第三个是closeAll关闭所有相关连接
 */
public class DataBaseDao {
	// 获取数据库连接的函数
	/**
	 * @return 返回一个java.sql.Connection类的连接实例
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
		String db_password = "";
		
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, db_username, db_password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	/**
	 * 查询方法
	 * @param conn为java.sql.Connection类的连接实例。可以通过getConnection()函数得到
	 * @param sql为需要执行的查询sql语句
	 * @return 返回一个java.sql.ResultSet类型的sql语句执行结果
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

	
	/**
	 * 关闭连接的方法 每次使用之该类之后，都使用这个方法关闭连接
	 * @param conn为java.sql.Connection类的连接实例。可以通过getConnection()函数得到
	 * @param pstmt
	 * @param rs
	 */
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

