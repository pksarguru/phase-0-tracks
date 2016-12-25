# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  if params[:name] != nil
    students = db.execute("SELECT * FROM students where name='#{params[:name]}'")
  else 
    students = db.execute("SELECT * FROM students")
  end
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Display /Contact

get '/contact' do
  "123 Fake Boulevard, This Place, Illinois, 60649"
end

# Great Job

get '/great_job/?:name?' do
  name = params[:name]
  if name != nil
    "Great Job, #{name}!"
  else
    "Great Job!"
  end
end

get '/:num1/add/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  result = num1 + num2
  "#{num1} plus #{num2} equals #{result}"

end
