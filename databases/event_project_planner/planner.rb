# Enter type of event
# Enter type of project for the event
# Enter due date of project
# Enter date of event
# User pull up the application and it checks the date now
# Pulls up by month
# What is over due ? (optioal/unlikely)
# What to do
# What has been done
# What events are happening

# require gems
require 'sqlite3'
require 'faker'
require 'date'
#require 'pry'

# will need Faker::Date, Faker::Boolean, Faker::Name?
# need to create a database
db = SQLite3::Database.new("planner.db")
db.results_as_hash = true

#first table needed
create_events_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS events(
    id INTEGER PRIMARY KEY,
    event_name VARCHAR(255),
    type_of_event VARCHAR(255),
    date_of_event DATETIME,
    has_happened BOOLEAN
  )
SQL

# I thought I was going to need this in the above table, but I'm not sure now:
# project_id (INT),
# FOREIGN KEY (project_id) REFERENCES projects(id)

#second table needed
create_projects_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS projects(
    id INTEGER PRIMARY KEY,
    project_name VARCHAR(255),
    type_of_project VARCHAR(255),
    due_date DATETIME,
    date_to_start DATETIME,
    is_done BOOLEAN,
    event_id INT,
    FOREIGN KEY (event_id) REFERENCES events(id)
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_events_table_cmd)
db.execute(create_projects_table_cmd)
#methods for entering info
def create_event(db, name, type, date, happened)
  db.execute("INSERT INTO events (event_name, type_of_event, date_of_event, has_happened) VALUES (?, ?, ?, ?)", [name, type, date, happened])
end

def create_project(db, name, type, due, start, done, event_id)
db.execute("INSERT INTO projects (project_name, type_of_project, due_date, date_to_start, is_done, event_id) VALUES (?, ?, ?, ?, ?, ?)", [name, type, due, start, done, event_id])
end

def mark_done(db, id)
  db.execute("UPDATE projects SET is_done='true' WHERE id = ?", [id])
end

#querrying
def what_events(db)
  db.execute("SELECT events.event_name, events.date_of_event FROM events;")
end

def what_projects(db)
  db.execute("SELECT projects.project_name, projects.due_date FROM projects;")
end

def what_to_do(db)
  db.execute("SELECT events.event_name, events.date_of_event, projects.project_name FROM projects JOIN events ON projects.event_id = events.id;")
end

def when_to_start(db)
  db.execute("SELECT events.event_name, projects.project_name, projects.date_to_start FROM projects JOIN events ON projects.event_id = events.id WHERE is_done = 'false';")
end

def get_id(db, name_of_event)
  db.execute("SELECT id FROM events WHERE event_name = ?", [name_of_event])
end


# create_event(db, 'Christmas2016', 'seasonal', '2016-12-25', 'false')
# create_project(db, 'scarf', 'knitting', '2016-12-25', '2016-10-1', 'false', 1)
# mark_done(db, 1)
# puts what_events(db)
# puts what_projects(db)
# puts what_to_do(db)
# puts when_to_start(db)
# puts get_id(db, 'Christmas2016')

puts "Would you like to create an 'event' or a 'project'? (or 'done' to check what you've already entered)"
answer = gets.chomp
while answer != "done"
  if answer == "event"
    puts "Great! Please enter the name of your event."
    name = gets.chomp
    puts "The name of your event is #{name}."
    puts "Now enter the type of event. (Birthday/Seasonal/Shower)"
    type = gets.chomp
    puts "The type of your event is #{type}."
    puts "When is this going to happen? (Please use YYYY-MM-DD format)"
    date = gets.chomp
    puts "The date of the event is #{date}."
    happened = "false"
    create_event(db, name, type, date, happened)
    puts what_events(db)
  elsif answer == "project"
    puts "Great! Please enter the name of your project."
    name = gets.chomp
    puts "The name of your project is #{name}."
    puts "Now enter the type of project. (Knitting/Baking)"
    type = gets.chomp
    puts "The type of your project is #{type}."
    puts "When is this need by? (Please use YYYY-MM-DD format)"
    due = gets.chomp
    date = Date.parse(due)
    puts "The project is due on #{due}."
    puts "How may days is this project going to take?"
    days = gets.chomp.to_i
    start_date = date - days
    start = start_date.to_s
    puts "You will need to start your project on #{start}."
    done = "false"
    puts "What event is this project for?"
    name_of_event = gets.chomp
    id_hash = get_id(db, name_of_event)#.to_i Is this already an int? may cause issue if it is.
    event_id = id_hash[0][0]
    create_project(db, name, type, due, start, done, event_id)
    puts what_projects(db)
  else
    puts "I'm sorry, could you type that again?"
  end
  puts "Would you like to create another event or project? (If you are done, type done.)"
  answer = gets.chomp
end
#
#puts what_to_do(db)
print_events = db.execute("SELECT events.event_name, events.type_of_event, events.date_of_event FROM events;")
p print_events
print_events.each do |event| #event_name, type_of_event, date_of_event,
  puts "#{event['event_name']} is a #{event['type_of_event']} type of event on #{event['date_of_event']}."
end

#project_name, type_of_project, due_date, date_to_start, event_id
print_projects = db.execute("SELECT projects.project_name, projects.type_of_project, projects.due_date, projects.date_to_start, events.event_name FROM projects JOIN events ON projects.event_id = events.id")
p print_projects
print_projects.each do |project|
  puts "You want to start #{project['project_name']} by #{project['date_to_start']} so you can be done by #{project['due_date']} in time for #{project['event_name']}."
end

# puts "Did you want to update any projects? (y/n)"
# if gets.chomp == "y"


# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end










#Compute the current date.
#SELECT date('now');
# my_time = Time.new(some_sql_retrieval_of_a_time)
# my_time.strftime("at %I:%M%p")
#driver code
# ask for name, type, date of event
  # convert into exacutiable sqlite3 commands
# ask for name, type, due date of project,
  # convert into exicutible sqlite3 commands
# ask for expected length of time required to finish it (suggest adding another 3rd the time on because good idea)
  # calculate when to start project and enter it into the date_to_start column
# allow user to update the status of project finished
# when done entering info
# show what projects need started this month
# show projects that have not been completed, but the due date hasn't passed
# show what events are happening this month.

# 3 main steps
# get info from user
# put info in database
# querry database for info

# response = some_sql_query
# p response

# irb(main):006:0> Date.new(2001,2,3)
# => #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
# irb(main):007:0> date = _
# => #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
# irb(main):008:0> date.iso8601
# => "2001-02-03"