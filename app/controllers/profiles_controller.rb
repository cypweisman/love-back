get "/profiles" do
  @profiles = Profile.all
end

post "/profiles" do
  @profile = Profile.new(params[:profile])
  @profile.save
    #error handling to console, just puts?
end

get "/profiles/new" do
  @profile.new
end

get "profiles/:id" do
  @profile = Profile.find(params[:id])
end

