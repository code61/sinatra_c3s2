require 'sinatra'

get '/' do
  output  = "<form method='post' action='/'>"
  output += "<input type='text' name='user_name' placeholder='name'>"
  output += "<input type='text' name='user_age' placeholder='age'>"
  output += "<button type='submit'>Submit</button>"
  output += '</form>'

  output
end

post '/' do
  name = params[:user_name]
  age  = params[:user_age].to_i # to_i converts the string "5" to the integer 5

  output = if age >= 18
             "Hello #{name.capitalize}. Here's your drink."
           else
             "This bar isn't the place for you, #{name.capitalize}. You're too young."
           end

  output += " <br><br><a href='/'>again</a>"

  output
end
