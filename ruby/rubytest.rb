app_answers = {
  name: "Greta",
  address: "123 lookout point",
  email: "gretaisgreat@gmail.com",
  phone: "555-123-4567",
  blue: "indigo",
  paisley: true,
  chevrons: true,
  with_squirrels: false,
  no_squirrels: false,
  ombre: "so last season"
}

p app_answers
#Driver code
app_answers[:with_squirrels] = true
app_answers[:got_job] = true

p app_answers

var = :email
p app_answers[var]

p (app_answers[:name] + app_answers[:address])

p app_answers