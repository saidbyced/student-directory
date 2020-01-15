#an array of students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

#print a heading
puts "The students of Villains Academy"
puts "-------------"

#print the list of students from the array
student.each do |student|
  puts student
end

#then we print the total number of students
puts "Overall, we have #{students.count} great students"