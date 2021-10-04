require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  @name = ["John", "Bob", "Rachel"].sample
  erb(:index)
end

get "/named-cat" do
  p params
  @name = params["name"]
  erb(:named_cat)
end

get "/secret" do
  "Shhh!"
end

get "/random-cat" do
  erb(:cat)
end

get "/u/:name" do
  "<h1>Hello #{params["name"]}"
end
