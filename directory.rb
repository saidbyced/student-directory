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

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_list_of (names)
  names.each do |name|
    puts name
  end
end

def print_footer_about (names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print_list_of(students)
print_footer_about(students)