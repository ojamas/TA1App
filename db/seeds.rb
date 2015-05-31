# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])    ??entire table??
#   Mayor.create(name: 'Emanuel', city: cities.first)                      ??single entry??


hours = Hours.create([{hours: 2}, {hours: 3}, {hours: 4}, {hours: 5}, {hours: 6}])

grades = Grade.create([{grade: 'A'}, {grade: 'A-'}, {grade: 'B+'}, {grade: 'B+'}, 
   {grade: 'B'}, {grade: 'B-'}, {grade: 'C+'}, {grade: 'C'}, {grade: 'C-'}, 
   {grade: 'D'}, {grade: 'Credit'}, {grade: 'Fail'}])

# instructors = Instructor.create([{instructor_id: 1, instructor_name: 'Irfan'}, {instructor_id: 2, instructor_name: 'Toma'}, {instructor_id: 3, instructor_name: 'Majercik'}, 
  # {instructor_id: 4, instructor_name: 'Chown'}, {instructor_id: 5, instructor_name: 'Barker'}, {instructor_id: 6, instructor_name: 'Oliveira'}, 
  # {instructor_id: 7, instructor_name: 'Silver'}])

languages = Language.create([{language: 'Java'}, {language: 'Python'}, {language: 'C'}, 
  {language: 'C++'}, {language: 'Objective-C'}, {language: 'Ruby'}])
  
proficiencies = Proficiency.create([{proficiency_level: 'No Experience'}, {proficiency_level: 'Beginner'}, 
  {proficiency_level: 'Proficient'}, {proficiency_level: 'Advanced'}])
  
qrs = Qr.create([{qr: "No"}, {qr: "Yes"}])

# semesters = Semester.create([{semester_id: 0}, {semester_id: 1}])   # 0 = FALL .... 1 = SPRING

class_years = ClassYear.create([{class_year: 2016}, {class_year: 2017}, {class_year: 2018}, {class_year: 2019}, {class_year: 2020}, 
  {class_year: 2021}, {class_year: 2022}])
  
# years = Year.create([{year_id: 2012}, {year_id: 2013}, {year_id: 2014}, {year_id: 2015}, {year_id: 2016}, {year_id: 2017}, {year_id: 2018}])

courses = Course.create([{course_id: 1101, course_name: 'Intro'}, {course_id: 2101, course_name: 'Data Structures'}, {course_id: 2200, course_name: 'Algorithms'}, 
  {course_id: 2210, course_name: 'Theory of Computation'}, {course_id: 2300, course_name: 'Computer Organization'}, {course_id: 2310, course_name: 'Operating Systems'},
  {course_id: 2325, course_name: 'Programming Languages'}, {course_id: 2400, course_name: 'Artificial Intelligence'},  {course_id: 2505, course_name: 'Mobile Computing'},
  {course_id: 3215, course_name: 'Spacial Data Structures'}, {course_id: 3225, course_name: 'GIS Algorithms & Data Structures'}, {course_id: 3235, course_name: 'When RAM Is Not Enough'},
  {course_id: 3250, course_name: 'Computational Geometry'}, {course_id: 3300, course_name: 'Computer Networks'}, {course_id: 3310, course_name: 'Computer Security'}, 
  {course_id: 3350, course_name: 'Social and Economic Networks'}, {course_id: 3355, course_name: 'Open Source Software Development'}, {course_id: 3400, course_name: 'Cognitive Architecture'},
  {course_id: 3415, course_name: 'Robotics'}, {course_id: 3425, course_name: 'Optimization & Uncertainty'}, {course_id: 3435, course_name: 'Artificial Intelligence & Computer Games'},
  {course_id: 3440, course_name: 'Nature Inspired Computation'}, {course_id: 4000, course_name: 'Independent Study'}])
