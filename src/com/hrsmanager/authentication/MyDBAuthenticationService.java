package com.hrsmanager.authentication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.hrsmanager.dao.EmployeeDAO;
import com.hrsmanager.model.Employee;

public class MyDBAuthenticationService implements UserDetailsService{
	
	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Override
	public UserDetails loadUserByUsername(String employee_id) throws UsernameNotFoundException, DataAccessException{
		Employee employee = employeeDAO.findEmployeeInfo(Integer.valueOf(employee_id));
		System.out.println("Employee Information: " +employee);
		
		if(employee == null) {
			throw new UsernameNotFoundException("User " + employee_id + " was not found");
		}
	
		UserDetails userDetails = (UserDetails)new Employee(employee.getEmployeeID(),employee.getEmployeeName(),
				employee.getGender(), employee.getBirthday(), employee.getPhone(), employee.getEmail());
		
		return userDetails;
	}
}
