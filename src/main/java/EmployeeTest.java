import models.Employee;

import java.util.Date;

public class EmployeeTest {

    public static void main(String[] args) {
        Employee employee = new Employee();

        employee.setEmpNo(1);
        employee.setFirstName("Dude");
        employee.setLastName("Awesome");
        employee.setBirthDate(new Date());
        employee.setHireDate(new Date());
        employee.setGender('M');

        System.out.println("Employee name is: " + employee.getFirstName() + " " + employee.getLastName());
    }

}
