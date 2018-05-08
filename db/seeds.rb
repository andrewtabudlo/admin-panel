# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(fname: 'Anthony', lname: 'Stark', email: 'tony@starkmail.com', password: 'avengersassemble', address_id: 3)

Instructor.create(fname: 'Steve', lname: 'Rogers', email: 'steve@starkmail.com', password: 'avengersassemble', address_id: 3)
Instructor.create(fname: 'Bruce', lname: 'Banner', email: 'bruce@starkmail.com', password: 'avengersassemble', address_id: 3)
Instructor.create(fname: 'Natasha', lname: 'Romanoff', email: 'natasha@starkmail.com', password: 'avengersassemble', address_id: 3)
Instructor.create(fname: 'Thor', lname: 'Odinson', email: 'thor@starkmail.com', password: 'avengersassemble', address_id: 3)

Student.create(fname: 'Peter', lname: 'Parker', email: 'peter@starkmail.com', password: 'avengersassemble', address_id: 1)
Student.create(fname: 'Franklin', lname: 'Richards', email: 'franklin@starkmail.com', password: 'avengersassemble', address_id: 2)
Student.create(fname: 'Miles', lname: 'Morales', email: 'miles@starkmail.com', password: 'avengersassemble', address_id: 3)
Student.create(fname: 'Kitty', lname: 'Pryde', email: 'kitty@starkmail.com', password: 'avengersassemble', address_id: 2)
Student.create(fname: 'Nico', lname: 'Minoru', email: 'nico@starkmail.com', password: 'avengersassemble', address_id: 1)
Student.create(fname: 'Alex', lname: 'Wilder', email: 'alex@starkmail.com', password: 'avengersassemble', address_id: 2)
Student.create(fname: 'Karolina', lname: 'Dean', email: 'karolina@starkmail.com', password: 'avengersassemble', address_id: 3)
Student.create(fname: 'Molly', lname: 'Hayes', email: 'molly@starkmail.com', password: 'avengersassemble', address_id: 2)
Student.create(fname: 'Chase', lname: 'Stein', email: 'chase@starkmail.com', password: 'avengersassemble', address_id: 1)
Student.create(fname: 'Gertrude', lname: 'York', email: 'gertrude@starkmail.com', password: 'avengersassemble', address_id: 1)
Student.create(fname: 'Laura', lname: 'Kinney', email: 'laura@starkmail.com', password: 'avengersassemble', address_id: 3)
Student.create(fname: 'Jeanne', lname: 'Foucault', email: 'jeanne@starkmail.com', password: 'avengersassemble', address_id: 1)

Course.create(code: 'AVG101', description: 'Avenging 101', tuition: 1000)
Course.create(code: 'AVG202', description: 'Avenging 202', tuition: 1000)
Course.create(code: 'DCL101', description: 'Damage Control 101', tuition: 1000)
Course.create(code: 'RCT101', description: 'React.js 101', tuition: 1000)

Cohort.create(name: 'AVG101-MAY-18', startdate: 'May 2018', instructor_id: 1, course_id: 1)
Cohort.create(name: 'AVG202-JUN-18', startdate: 'June 2018', instructor_id: 3, course_id: 2)
Cohort.create(name: 'DCL101-SEP-18', startdate: 'September 2018', instructor_id: 2, course_id: 3)
Cohort.create(name: 'RCT101-JAN-19', startdate: 'Januare 2019', instructor_id: 3, course_id: 4)

CohortStudent.create(cohort_id: 1, student_id: 1, grade: 100, passing: true)
CohortStudent.create(cohort_id: 1, student_id: 2, grade: 100, passing: true)
CohortStudent.create(cohort_id: 1, student_id: 3, grade: 100, passing: true)
CohortStudent.create(cohort_id: 1, student_id: 4, grade: 100, passing: true)

CourseTimeline.create(course_id: 1, cohort_id: 1, title: 'Summoning Protocol', date: 'May 1, 2018', content: 'placeholder', assignment: 'lesson')
CourseTimeline.create(course_id: 1, cohort_id: 1, title: 'Teamwork', date: 'May 2, 2018', content: 'placeholder', assignment: 'lesson')

Address.create(country: 'USA', company: 'SHIELD', state: 'NY', streetaddress: '90 John St.', city: 'New York', apartment: '404', zip: '10038')
Address.create(country: 'USA', company: 'HYDRA', state: 'NY', streetaddress: '91 John St.', city: 'New York', apartment: '502', zip: '10038')
Address.create(country: 'USA', company: 'Stark Industries', state: 'NY', streetaddress: '285 Fulton St.', city: 'New York', apartment: '9001', zip: '10007')
