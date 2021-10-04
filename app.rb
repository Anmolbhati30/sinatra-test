require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  erb(:index)
end

get "/secret" do
  "Shhh!"
end

get "/cat" do
  erb(:cat)
end
