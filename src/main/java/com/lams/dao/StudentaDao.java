package com.lams.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.lams.bo.StudentBo;
import com.lams.dto.StudentDto;
import com.lams.util.DbConnection;

public class StudentaDao {
	private final String SAVE_STUDENT = "insert into student(rollno,name,gender,course)values(?,?,?,?)";

	private final String VIEW_STUDENT = "SELECT rollno,name,gender,course FROM STUDENT";
	
	private final String DELETE_STUDENT = "DELETE FROM STUDENT WHERE ROLLNO=?";
	
	private final String SEARCH_STUDENT = "SELECT rollno,name,gender,course FROM STUDENT WHERE rollno=?";
	
	private final String  UPDATE_STUDENT = "UPDATE STUDENT SET name =?,gender =?,course =? WHERE rollno = ?";
	
	public int addStudent(StudentBo studentBo) {
		// do database operation logic
		int i = 0;
		try {
			Connection con = DbConnection.getConn();
			
			PreparedStatement ps = con.prepareStatement(SAVE_STUDENT);
			ps.setInt(1, studentBo.getRollno());
			ps.setString(2, studentBo.getName());
			ps.setString(3, studentBo.getGender());
			ps.setString(4, studentBo.getCourse());
		 i = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
		
	}
	
	public List<StudentDto> viewStudents(){
		StudentDto dto = null;
		List<StudentDto> studentList = new ArrayList<StudentDto>();
		try {
			Connection con = DbConnection.getConn();
			PreparedStatement ps = con.prepareStatement(VIEW_STUDENT);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				dto = new StudentDto();
				dto.setRollno(rs.getInt(1));
				dto.setName(rs.getString(2));
				dto.setGender(rs.getString(3));
				dto.setCourse(rs.getString(4));
				studentList.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return studentList;
	}
	public boolean delete(int rollno) {
		boolean status = true;
		
		try {
			Connection con = DbConnection.getConn();
			
			PreparedStatement ps = con.prepareStatement(DELETE_STUDENT);
			ps.setInt(1, rollno);
			status = ps.execute();
			System.out.println("status::" +status);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public StudentDto getStudentDetails(int rollNumber) {
		
		StudentDto dto = null;
		
		try {
			Connection con = DbConnection.getConn();
			PreparedStatement ps = con.prepareStatement(SEARCH_STUDENT);
			ps.setInt(1, rollNumber);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				dto = new StudentDto();
				dto.setRollno(rs.getInt(1));
				dto.setName(rs.getString(2));
				dto.setGender(rs.getString(3));
				dto.setCourse(rs.getString(4));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return dto;
	}
	
	public int updateStudent(StudentBo studentBo) {
		int i = 0;
		try {
			Connection con = DbConnection.getConn();
			
			PreparedStatement ps = con.prepareStatement(UPDATE_STUDENT);
			ps.setString(1, studentBo.getName());
			ps.setString(2, studentBo.getGender());
			ps.setString(3, studentBo.getCourse());
			ps.setInt(4, studentBo.getRollno());
			i = ps.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
		
	}
	
}
