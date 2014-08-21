get '/' do
 # team1 = Team.create()
 # team2 = Team.create()
 erb :index
end


post '/champions/:id' do
  redirect '/'
end
