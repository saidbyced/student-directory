=begin
#an array of students for testing
students_array = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
=end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit Return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add student to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_list_of(students)
=begin
#Step 8, exercise 1
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort].capitalize} cohort)"
  end
#Step 8, exercise 2
  puts "Show students beginnig with the letter..."
  letter = gets.chomp.capitalize
  students.each do |student|
    if student[:name][0] == letter
      puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)"
    end
  end
#Step 8, exercise 3
  students.each do |student|
    if student[:name].length > 11
      puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)"
    end
  end
#Step 8, exercise 4
  count = 0
  while students[count] != nil
    puts "#{students[count][:name]} (#{students[count][:cohort].capitalize} cohort)"
    count = count + 1
  end
#Step 8, exercise 6, 7, 8, 10
#Step 11 == complete
=end
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)"
  end
end

def print_footer_about(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print_list_of(students)
print_footer_about(students)