require 'sinatra'
require 'JSON'
require 'profile'
require 'pry'

get "/profiles" do
  Profile.all.to_json
end

post "/profiles" do
  p "HHHHHHHHHHHH"
  binding.pry
  user_info = JSON.parse(request.body.read)
  profile = Profile.new(user_info)
  profile.save
  status 201
    #error handling to console, just puts?
end

get "/profiles/new" do
  Profile.new
end

get "/profiles/:id" do
  profile = Profile.find(params[:id])
  return status 404 if profile.nil?
  profile.to_json
end

put "/profiles/:id" do
  p '!!!!!!!!!!!!!!'
  p user_info = JSON.parse(request.body.read)
  profile = Profile.find(params[:id])
  return status 404 if profile.nil?
  profile.update(user_info)
  profile.save
  status 202
end

delete "/profiles/:id" do
  profile = Profile.find(params[:id])
  return status 404 if profile.nil?
  profile.delete
  status 202
end
