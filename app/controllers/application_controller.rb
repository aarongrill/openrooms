require './config/environment'
require './app/models/roomfinder'
require './app/models/current_schedule'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/viewroom' do
    erb :viewroom
  end
  
  get '/roomsnow' do
    current_schedule = CurrentSchedule.new
    @free = RoomFinder.new(current_schedule.day, current_schedule.period, current_schedule.week)
    erb :viewroom
  end
  post '/viewroom' do
    current_schedule = CurrentSchedule.new
    @free = RoomFinder.new(current_schedule.day, current_schedule.period, current_schedule.week)
    erb :viewroom
  end

end
