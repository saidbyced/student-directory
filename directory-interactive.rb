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

@students = []

def interactive_menu
#print options and do selection
  loop do
    # 1. print the menu and ask the user what to do
    print_menu
    # 2. read the input and save it into a variable
    # 3. do what the user has asked
    process(gets.chomp)
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit Return twice"
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add student to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort].capitalize} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" #9 because we will be adding more functionailty later
end


def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit #this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
end

interactive_menu