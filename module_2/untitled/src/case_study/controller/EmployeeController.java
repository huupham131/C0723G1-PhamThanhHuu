package case_study.controller;

import case_study.model.person.Employee;
import case_study.service.IPersonService;
import case_study.service.impl.EmployeeServiceImpl;

import java.util.List;

public class EmployeeController {
    private final IPersonService<Employee> employeeService = new EmployeeServiceImpl();

    public void add(Employee employee) {
        employeeService.add(employee);
    }

    public void delete(String id) {
        employeeService.delete(id);
    }

    public List<Employee> display() {
        return employeeService.display();
    }

    public void edit(Employee employee) {
        employeeService.edit(employee);
    }

    public List<Employee> searchByName(String name) {
        return employeeService.searchByName(name);
    }
}
