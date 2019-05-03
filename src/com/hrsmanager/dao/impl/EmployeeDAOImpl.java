package com.hrsmanager.dao.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrsmanager.dao.EmployeeDAO;
import com.hrsmanager.mapper.EmployeeMapper;
import com.hrsmanager.model.Employee;

@Service
@Transactional
public class EmployeeDAOImpl extends JdbcDaoSupport implements EmployeeDAO {

	@Autowired
	public EmployeeDAOImpl(DataSource dataSource) {
		this.setDataSource(dataSource);
	}
	
	@Override
	public Employee findEmployeeInfo(Integer employee_id) {
		String sql = "Select * from Employees emp where emp.employee_id = ?";
		Object[] params = new Object[] {employee_id};
		EmployeeMapper empMapper = new EmployeeMapper();
		try {
			Employee employee = (Employee) this.getJdbcTemplate().queryForObject(sql, params, empMapper);
			return employee;
		}catch(EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	@Override
	public List<Employee> viewEmployees(Integer status_id){
		String sql = "Select * from Employees emp"//
				+"where emp.status_id = ?";
		Object[]params = new Object[] {status_id};
		List<Employee> listEmp = this.getJdbcTemplate().queryForList(sql, params, Employee.class);
		return listEmp;
	}
}
