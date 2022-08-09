@students = [] # create an empty array accessible to all methods

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items  
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
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end
# let's put all students into an array
def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  # get first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
# iterating
def print_student_list
  @students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
# finally, we print the total number of students
def print_footer
  puts "Overall, we have #{@students.count} great students"
end

interactive_menu