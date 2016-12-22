# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true
create_complaints_table = <<-SQL
  CREATE TABLE IF NOT EXISTS complaints(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    campus VARCHAR(255),
    complaint VARCHAR(255)
    )
SQL
db.execute(create_complaints_table)

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# create campus sort page
get '/campus/:campus' do
  @students = db.execute("SELECT * FROM students")
  erb :campus
end

# Complaint form
get '/complaint/new' do
  erb :complaint
end

post '/complaint' do
  db.execute("INSERT INTO complaints (name, campus, complaint) VALUES (?, ?, ?)", [params['name'], params['campus'], params['complaints']])
  redirect '/complaint/new'

end


