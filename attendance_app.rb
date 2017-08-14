<<<<<<< HEAD
=======
require "csv"
>>>>>>> bd5a3b6dae4a5a8687757456c30e65108ac4a02e
require "terminal-table"
require "artii"

# The hash array containing the students (Keys) and their answers (Values)
class_list = {
  Terence: "",
  Cindy: "",
  Jonathan: "",
  Ali: "",
  Timothy: "",
  Sophie: "",
  Carmen: "",
  Khaled: "",
  Peter: "",
  Rajani: "",
  Sakshi: "",
  Sana: "",
  Travis: "",
  Nathanial: "",
  Kevin: "",
  Ric: "",
  James: "",
  Olivia: "",
  Omar: "",
  Neil: "",
  Takuya: "",
  Thomas: "",
  Gregory: "",
  Alex: "",
  Bianca: "",
  Tessa: "",
  Paul: "",
  Richard: "",
  David: "",
  Kasumi: "",
  Syaf: "",
}

<<<<<<< HEAD
# Creates and stores the student/answer data
class Answers
  def initialize(name, answer)
    @name = name
    @answer = answer
=======
class Students
  def initalize(id)
    @id = id
>>>>>>> bd5a3b6dae4a5a8687757456c30e65108ac4a02e
  end
  attr_accessor :id

<<<<<<< HEAD
  def writetoarray(class_list,todays_question)  #this is being done in the loop.
    class_list[@name.to_sym] = @answer
    table = Terminal::Table.new :headings => ["Name", todays_question],:rows => class_list
    puts table
=======
  def choose_student
    youth = [
      "Terence",
      "Cyndi",
      "Jonathan",
      "Ali",
      "Timothy",
      "Sophie",
      "Carmen",
      "Khaled",
      "Peter",
      "Rajani",
      "Sakshi",
      "Sana",
      "Travis",
      "Nathanial",
      "Kevin",
      "Ric",
      "James",
      "Olivia",
      "Omar",
      "Neil",
      "Takuya",
      "Thomas",
      "Gregory",
      "Alex",
      "Bianca",
      "Tessa",
      "Paul",
      "Richard",
      "David",
      "Kasumi",
      "Syaf",
    ]
    todays_student = youth.shuffle.first
>>>>>>> bd5a3b6dae4a5a8687757456c30e65108ac4a02e
  end
end

# Randomly selects the student that takes the roll
class Students
  def initalize(id)
    @id = id
  end
  attr_accessor :id

  def choose_student
    youth = [
      "Terence",
      "Cindy",
      "Jonathan",
      "Ali",
      "Timothy",
      "Sophie",
      "Carmen",
      "Khaled",
      "Peter",
      "Rajani",
      "Sakshi",
      "Sana",
      "Travis",
      "Nathanial",
      "Kevin",
      "Ric",
      "James",
      "Olivia",
      "Omar",
      "Neil",
      "Takuya",
      "Thomas",
      "Gregory",
      "Alex",
      "Bianca",
      "Tessa",
      "Paul",
      "Richard",
      "David",
      "Kasumi",
      "Syaf",
    ]
    todays_student = youth.shuffle.first
  end
end

# Randomly selects the question
class Questions
  def initialize(question=0)
    @question = question
  end

  def randomise_q
    questions = [
      "Would you rather be rich and ugly, or poor and good looking?",
      "Do you regularly read movie reviews?",
      "What's your favourite sports team?",
      "What celebrity do you like to follow?",
      "What is the best thing that has happened to you this week?",
      "If you could have one super power, what would it be?",
      "What is your biggest fear?",
      "If you were asked to teach a class, what class would you teach?",
      "What do you do to stay in shape?",
      "Do you follow your heart or your head?",
      "What is your dream job?",
      "Would you rather have summer weather or winter weather all year round?",
      "Who is your favorite actor/actress?",
      "Who is the most famous person you have met?",
      "What is your biggest regret this week?",
      "Do you prefer to travel or stay close to home?",
      "What do you wear to sleep?",
      "What is the longest that you've stayed awake for?",
      "If you could be any celebrity, who would it be?",
      "What did you have for lunch yesterday?",
      "What do you usually eat in the morning?",
      "Do you recycle?",
      "What job would you choose to try?",
      "Are you an indoor or outdoor person?",
      "Do you prefer talking over the phone or face to face?",
      "Do you have any pets?",
      "What drink do you usually order with your food?",
      "Where do you work?",
      "What's your favourite cheese?",
      "What's your favourite pizza topping?",
      "PC or Mac?",
      "What’s your favourite colour?",
      "What’s your favourite dessert?",
      "Coffee or tea?",
      "If you could travel anywhere in the world where would you go?",
      "What’s your favourite hobby?",
      "Can you drive?",
      "Have you ever been camping?",
      "Have you ever been on a roadtrip?",
      "Sunset or Sunrise?"
    ]
    todays_question = questions.shuffle.first
  end
end

## This part should get a randomised question from the Question class
todays_question = Questions.new.randomise_q
todays_student = Students.new.choose_student


## This generates the initial list of names with todays question.
table = Terminal::Table.new :headings => ["Name", todays_question],:rows => class_list

a = Artii::Base.new :font => 'slant'
<<<<<<< HEAD
titleroll = a.asciify('Rollcallatron')

# Program starts here
system("clear")
puts titleroll
puts table
puts
print "The person taking the role today is"
sleep(1)
print "."
sleep(1)
print "."
sleep(1)
print "."
sleep(1)
puts "*drumroll please*"
sleep(1)
puts "#{todays_student}, you're up!"
sleep(1)

=======
titleroll = a.asciify('Roll-call-atron')

puts
puts "The person taking the role today is ..."
sleep(1)
puts "*drumroll please*"
sleep(1)
puts "#{todays_student} is taking the role today"
sleep(2)
>>>>>>> bd5a3b6dae4a5a8687757456c30e65108ac4a02e
## This loops over the process to select a person and get their answer
loop do
  system("clear")
  puts titleroll
  puts table
  puts "Who are you marking off?"
  idno = gets.chomp.capitalize
  if class_list[idno.to_sym].nil?
    puts "Check your spelling or the name entered is not in the class."
  else
    puts todays_question
<<<<<<< HEAD
    ans = Answers.new(idno, gets.chomp)
    system("clear")
  end
  puts titleroll
  ans.writetoarray(class_list,todays_question)
  puts "\nMark off next person? (yes) (no) \n \nFinalise and export (export)"
  mark_next = gets.chomp
  if mark_next == "no"
    break

    # Exports current state of array to txt file. 
=======
    ans = gets.chomp
    class_list[idno.to_sym] = ans
    table = Terminal::Table.new :headings => ["Name", todays_question],:rows => class_list
    system("clear")
  end
  puts titleroll
  puts table
  puts "Mark off another person? (yes) (no) \nFinalise and export (export)"
  mark_next = gets.chomp
  if mark_next == "no"
    break
>>>>>>> bd5a3b6dae4a5a8687757456c30e65108ac4a02e
  elsif mark_next == "export"
    d = Time.now.strftime("%d%m%Y")
    saved_file = File.new("#{d}:#{todays_question}.txt", "w+")
    File.open(saved_file, 'w') do |file|
    class_list.each{ |k, v| file.write("#{k}: #{v}\n") }
<<<<<<< HEAD
    print "Exporting file"
    sleep(1)
    print "."
    sleep(1)
    print "."
    sleep(1)
    print "."
    puts "File exported."
    abort
    break
=======
    abort
>>>>>>> bd5a3b6dae4a5a8687757456c30e65108ac4a02e
  end
end
end
