puts "Please enter the names of the students: "
puts "To finish, just hit return twice."

# create and empty array
students = []

# get the first name
name = gets.chomp

# while the name is not empty, repeat this code
while !name.empty? do
  # add name to array
  students << { name: name, cohort: :november }
  puts "Now we have #{students.count} students."
  # get another name from the user
  name = gets.chomp
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
#return array of students
students

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohrot)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end


print_header
print(students)
print_footer(students)