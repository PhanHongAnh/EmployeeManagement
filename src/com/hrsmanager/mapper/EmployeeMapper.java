package com.hrsmanager.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.springframework.jdbc.core.RowMapper;

import com.hrsmanager.model.Employee;

public class EmployeeMapper implements RowMapper<Employee> {

	@Override 
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException{
		Integer employee_id = rs.getInt("employee_id");
		String employee_name = rs.getString("employee_name");
		String gender =  rs.getString("gender");
		Date birthday = rs.getDate("birthday");
		String phone = rs.getString("phone");
		String email = rs.getString("email");
		String address = rs.getString("address");
		String password = rs.getString("password");
		Date started_day = rs.getDate("started_day");
		Integer status_id = rs.getInt("status_id");
		Integer role_id = rs.getInt("role_id");
		Timestamp created_at = rs.getTimestamp("create_at");
		Timestamp updated_at = rs.getTimestamp("updated_at");
		Integer department_id = rs.getInt("department_id");
		Integer position_id = rs.getInt("position_id");
		Employee emp = new Employee(employee_id, employee_name, gender, birthday, phone, email);
		emp.setAddress(address);
		emp.setPassword(password);
		emp.setStartedDay(started_day);
		emp.setStatusID(status_id);
		emp.setRoleID(role_id);
		emp.setDepartmentID(department_id);
		emp.setPositionID(position_id);
		emp.setCreateAt(created_at);
		emp.setUpdatedAt(updated_at);
		return emp;
		
	}
}
