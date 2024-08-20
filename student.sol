pragma solidity ^0.4.0;

contract Student {
    // Struct to store student details
    struct StudentDetails {
        uint timestamp;
        string studentname;
        string Gender;
        string Address;
        string email;
        int age;
        int fee;
        int marks;
    }

    // Mapping to store student details by their ID
    mapping(int => StudentDetails) public students;

    // Function to set student details
    function setStudent(
        int _studentid, 
        string _studentname, 
        string _Gender, 
        string _Address, 
        string _email, 
        int _age, 
        int _fee, 
        int _marks
    ) public {
        // Store student details in the mapping
        students[_studentid] = StudentDetails(
            now,
            _studentname,
            _Gender,
            _Address,
            _email,
            _age,
            _fee,
            _marks
        );
    }

    // Function to retrieve student details by ID
    function getStudent(int _studentid) public view returns (
        string, string, string, string, int, int, int
    ) {
        StudentDetails memory s = students[_studentid];
        return (s.studentname, s.Gender, s.Address, s.email, s.age, s.fee, s.marks);
    }
}
