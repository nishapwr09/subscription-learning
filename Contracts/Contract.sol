// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SubscriptionLearning {
    struct Course {
        address instructor;
        uint256 price;
        uint256 duration;
        bool exists;
    }

    struct Enrollment {
        uint256 startTime;
        bool active;
    }

    mapping(uint256 => Course) public courses;
    mapping(uint256 => mapping(address => Enrollment)) public enrollments;
    
    uint256 private courseCounter;
    address private owner;

    // Minimalist events for gas efficiency
    event CourseCreated(uint256 courseId, address instructor, uint256 price);
    event Subscribed(uint256 courseId, address student);

    constructor() {
        owner = msg.sender;
    }

    // Low-gas function to create a course
    function createCourse(uint256 _price, uint256 _duration) external returns (uint256) {
        courseCounter++;
        courses[courseCounter] = Course({
            instructor: msg.sender,
            price: _price,
            duration: _duration,
            exists: true
        });
        
        emit CourseCreated(courseCounter, msg.sender, _price);
        return courseCounter;
    }

    // Efficient subscription mechanism
    function subscribeToCourse(uint256 _courseId) external payable {
        require(courses[_courseId].exists, "Course does not exist");
        require(msg.value >= courses[_courseId].price, "Insufficient payment");
        
        enrollments[_courseId][msg.sender] = Enrollment({
            startTime: block.timestamp,
            active: true
        });
        
        emit Subscribed(_courseId, msg.sender);
        
        // Refund excess payment
        if (msg.value > courses[_courseId].price) {
            payable(msg.sender).transfer(msg.value - courses[_courseId].price);
        }
    }

    // Check course validity
    function isCourseActive(uint256 _courseId, address _student) external view returns (bool) {
        Enrollment memory enrollment = enrollments[_courseId][_student];
        Course memory course = courses[_courseId];
        
        return enrollment.active && 
               (block.timestamp - enrollment.startTime) <= course.duration;
    }

    // Instructor withdrawal
    function withdrawFunds() external {
        uint256 balance = address(this).balance;
        payable(owner).transfer(balance);
    }

    // Fallback to prevent accidental sends
    receive() external payable {
        revert("Direct sends not allowed");
    }
}