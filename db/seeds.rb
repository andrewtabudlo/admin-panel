# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(fname: 'Anthony', lname: 'Stark', email: 'tony@starkmail.com', age: 37, password: 'avengersassemble')

Instructor.create(fname: 'Steve', lname: 'Rogers', email: 'steve@starkmail.com', age: 90, salary: 999999, degree: 'College')
Instructor.create(fname: 'Bruce', lname: 'Banner', email: 'bruce@starkmail.com', age: 34, salary: 999999, degree: 'PHD')
Instructor.create(fname: 'Natasha', lname: 'Romanoff', email: 'natasha@starkmail.com', age: 28, salary: 999999, degree: 'College')
Instructor.create(fname: 'Thor', lname: 'Odinson', email: 'thor@starkmail.com', age: 149, salary: 999999, degree: 'College')

Student.create(fname: 'Peter', lname: 'Parker', age: 17, email: 'peter@starkmail.com', degree: 'HS')
Student.create(fname: 'Franklin', lname: 'Richards', age: 5, email: 'franklin@starkmail.com', degree: 'HS')
Student.create(fname: 'Miles', lname: 'Morales', age: 13, email: 'miles@starkmail.com', degree: 'HS')
Student.create(fname: 'Kitty', lname: 'Pryde', age: 17, email: 'kitty@starkmail.com', degree: 'HS')
Student.create(fname: 'Nico', lname: 'Minoru', age: 16, email: 'nico@starkmail.com', degree: 'HS')
Student.create(fname: 'Alex', lname: 'Wilder', age: 16, email: 'alex@starkmail.com', degree: 'HS')
Student.create(fname: 'Karolina', lname: 'Dean', age: 16, email: 'karolina@starkmail.com', degree: 'HS')
Student.create(fname: 'Molly', lname: 'Hayes', age: 12, email: 'molly@starkmail.com', degree: 'HS')
Student.create(fname: 'Chase', lname: 'Stein', age: 16, email: 'chase@starkmail.com', degree: 'HS')
Student.create(fname: 'Gertrude', lname: 'York', age: 16, email: 'gertrude@starkmail.com', degree: 'HS')
Student.create(fname: 'Laura', lname: 'Kinney', age: 11, email: 'laura@starkmail.com', degree: 'HS')
Student.create(fname: 'Jeanne', lname: 'Foucault', age: 13, email: 'jeanne@starkmail.com', degree: 'HS')

Course.create(code: 'AVG101', name: 'Avenging 101', tuition: 10000, hours: 999)
Course.create(code: 'AVG202', name: 'Avenging 202', tuition: 10000, hours: 999)
Course.create(code: 'DCL101', name: 'Damage Control 101', tuition: 10000, hours: 999)
Course.create(code: 'RCT101', name: 'React.js 101', tuition: 10000, hours: 999)

Cohort.create(name: 'AVG101-MAY-18', startdate: 'May 1, 2018', enddate: 'August 1, 2018', instructor_id: 1, course_id: 1)
Cohort.create(name: 'AVG202-JUN-18', startdate: 'June 1, 2018', enddate: 'September 1, 2018', instructor_id: 2, course_id: 2)
Cohort.create(name: 'DCL101-SEP-18', startdate: 'September 1, 2018', enddate: 'December 1, 2018', instructor_id: 3, course_id: 3)
Cohort.create(name: 'RCT101-JAN-19', startdate: 'January 1, 2019', enddate: 'April 1, 2018', instructor_id: 4, course_id: 4)

CohortStudent.create(cohort_id: 1, student_id: 1, grade: 100, passing: true)
CohortStudent.create(cohort_id: 1, student_id: 2, grade: 100, passing: true)
CohortStudent.create(cohort_id: 1, student_id: 3, grade: 100, passing: true)
CohortStudent.create(cohort_id: 1, student_id: 4, grade: 100, passing: true)
CohortStudent.create(cohort_id: 2, student_id: 5, grade: 100, passing: true)
CohortStudent.create(cohort_id: 2, student_id: 6, grade: 100, passing: true)
CohortStudent.create(cohort_id: 2, student_id: 7, grade: 100, passing: true)
CohortStudent.create(cohort_id: 2, student_id: 8, grade: 100, passing: true)
CohortStudent.create(cohort_id: 3, student_id: 9, grade: 100, passing: true)
CohortStudent.create(cohort_id: 3, student_id: 10, grade: 100, passing: true)
CohortStudent.create(cohort_id: 3, student_id: 11, grade: 100, passing: true)
CohortStudent.create(cohort_id: 3, student_id: 12, grade: 100, passing: true)
CohortStudent.create(cohort_id: 4, student_id: 2, grade: 100, passing: true)
CohortStudent.create(cohort_id: 4, student_id: 4, grade: 100, passing: true)
CohortStudent.create(cohort_id: 4, student_id: 6, grade: 100, passing: true)
CohortStudent.create(cohort_id: 4, student_id: 8, grade: 100, passing: true)
