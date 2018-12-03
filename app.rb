require "sinatra"
require "sinatra/reloader" if development?
require_relative "database"
require 'pry-byebug'


get "/" do
  @posts = DB
  erb :posts
end

get "posts/new" do
  erb :new_post
end

get "/posts/:id" do
  id = params[:id].to_i
  @post = DB[id]

  @comments = COMMENTS[id]

  erb :post
end

post "/posts" do
  @posts = DB
  @post = {
    title: params[:title],
    content: params[:content],
    photo: params[:photo]
  }

  if @posts << @post
    redirect to('/')
  else
    erb :new_post
  end
end


