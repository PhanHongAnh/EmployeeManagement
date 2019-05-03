package com.hrsmanager.dao;

import java.util.List;

import com.hrsmanager.model.Employee;

public interface EmployeeDAO {

	public Employee findEmployeeInfo(Integer employee_id);
	
	public List<Employee> viewEmployees(Integer status_id);
}
