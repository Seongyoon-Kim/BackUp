package com.test.spring.di.ex07;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

	public static Connection open() {

		Connection conn = null;

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "hr";
		String pw = "java1234";

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw); // ***** 자바와 오라클이 연결(접속 O)
			
			return conn;

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;

	} // open
	
	public static Connection open(String server, String id, String pw) {

		Connection conn = null;

		String url = "jdbc:oracle:thin:@" + server + ":1521:xe";

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw); // ***** 자바와 오라클이 연결(접속 O)
			
			return conn;

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;

	} // open

} // DBUtil