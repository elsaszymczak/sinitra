require "sinatra"
require "sinatra/reloader" if development?
require_relative "database"
require 'pry-byebug'
require_relative "config/application"

set :views, (proc { File.join(root, "app/views") })



get "/" do
  @posts = Post.all
  erb :posts
end

get "posts/new" do
  erb :new_post
end

get "/posts/:id" do
  @post = Post.find(params[:id])
  @comment = Comment.new

  erb :post
end

post "/posts" do
  @post = Post.new()
  @post.title = params[:title]
  @post.content = params[:content]
  @post.photo = params[:photo]

  if @post.save
    redirect to('/')
  else
    erb :new_post
  end
end

post "/posts/:post_id/comments" do
  @post = Post.find(params[:post_id])
  @comment = Comment.new
  @comment.content = params[:content]
  @comment.post = @post
  @comment.save

  @post_id = params[:post_id]

  if @comment.save
    redirect to ("/posts/#{@post_id}")
  else
    erb :post
  end
end

# /monstas?name=#{@name}"


