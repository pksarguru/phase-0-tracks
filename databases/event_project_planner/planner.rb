# require gems
require 'sqlite3'
#require 'faker'
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

db.execute(create_events_table_cmd)
db.execute(create_projects_table_cmd)
#methods for entering info
def create_event(db, name, type, date, happened)
  db.execute("INSERT INTO events (event_name, type_of_event, date_of_event, has_happened) VALUES (?, ?, ?, ?)", [name, type, date, happened])
end

def create_project(db, name, type, due, start, done, event_id)
db.execute("INSERT INTO projects (project_name, type_of_project, due_date, date_to_start, is_done, event_id) VALUES (?, ?, ?, ?, ?, ?)", [name, type, due, start, done, event_id])
end

def mark_done(db, name)
  db.execute("UPDATE projects SET is_done='true' WHERE project_name = ?", [name])
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

def still_to_do(db)
  projects_left = db.execute("SELECT * FROM projects WHERE is_done = 'false';")
  projects_left.each do |project|
    puts "#{project['project_name']} is due #{project['due_date']}."
  end
end

puts "Would you like to create an 'event' or a 'project'? (or 'done' to check what you've already entered)"
answer = gets.chomp
while answer != "done"
  if answer == "event"
    puts "Great! Please enter the name of your event."
    name = gets.chomp
    #puts "The name of your event is #{name}."
    puts "Now enter the type of event. (Birthday/Seasonal/Shower)"
    type = gets.chomp
    #puts "The type of your event is #{type}."
    puts "When is this going to happen? (Please use YYYY-MM-DD format)"
    date = gets.chomp
    #puts "The date of the event is #{date}."
    happened = "false"
    create_event(db, name, type, date, happened)
    puts "#{name} is a #{type} type of event on #{date}."
    #puts what_events(db)
  elsif answer == "project"
    puts "Great! Please enter the name of your project."
    name = gets.chomp
    #puts "The name of your project is #{name}."
    puts "Now enter the type of project. (Knitting/Baking)"
    type = gets.chomp
    #puts "The type of your project is #{type}."
    puts "When is this need by? (Please use YYYY-MM-DD format)"
    due = gets.chomp
    date = Date.parse(due)
    #puts "The project is due on #{due}."
    puts "How may days is this project going to take?"
    days = gets.chomp.to_i
    start_date = date - days
    start = start_date.to_s
    #puts "You will need to start your project on #{start}."
    done = "false"
    puts "What event is this project for?"
    name_of_event = gets.chomp
    id_hash = get_id(db, name_of_event)
    event_id = id_hash[0][0]
    create_project(db, name, type, due, start, done, event_id)
    puts "You want to start #{name} by #{start} so you can be done by #{due} in time for #{name_of_event}."
    #puts what_projects(db)
  else
    puts "I'm sorry, could you type that again?"
  end
  puts "Would you like to create another event or project? (If you are done, type done.)"
  answer = gets.chomp
end

puts "Do you want to print your list of events? (y/n)"
if gets.chomp == "y"
  print_events = db.execute("SELECT events.event_name, events.type_of_event, events.date_of_event FROM events;")
  print_events.each do |event|
    puts "#{event['event_name']} is a #{event['type_of_event']} type of event on #{event['date_of_event']}."
  end
end

puts "Do you want to print your list of projects? (y/n)"
if gets.chomp == "y"
  print_projects = db.execute("SELECT projects.project_name, projects.type_of_project, projects.due_date, projects.date_to_start, events.event_name FROM projects JOIN events ON projects.event_id = events.id")
  print_projects.each do |project|
    puts "You want to start #{project['project_name']} by #{project['date_to_start']} so you can be done by #{project['due_date']} in time for #{project['event_name']}."
  end
end

puts "Do you want to update any projects? (y/n)"
if gets.chomp == "y"
  puts "Which project did you want to update?"
  name = gets.chomp
  mark_done(db, name)
  puts "#{name} is done, here are the projects you still need to work on:"
  still_to_do(db)
end




