package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Dto.MemberDto;

public class MemberDao {
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public MemberDao() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean Insert(MemberDto dto) {
		boolean isok = false;
		try {
			pstmt = con.prepareStatement("insert into member_tbl_02 values(?,?,?,?,?,?,?)");
			pstmt.setInt(1, Integer.parseInt(dto.getCustno())); //String ->  Int 바꾸는 방법 == Interger.parseInt(String 타입의 값)
			pstmt.setString(2, dto.getCustname());
			pstmt.setString(3, dto.getPhone());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getJoindate());
			pstmt.setString(6, dto.getGrade());
			pstmt.setString(7, dto.getCity());
			int result = pstmt.executeUpdate();
			if(result > 0) {
				isok = true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
			try {con.close();}catch(Exception e) {e.printStackTrace();}

		}
		return isok;
		
	
	}
	
	
	
	
}
