require './config/environment'
require './app/models/roomfinder'
require './app/models/current_schedule'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    current_schedule = CurrentSchedule.new
    @currentfree = RoomFinder.new(current_schedule.week, current_schedule.day, current_schedule.period)
    erb :index
  end

  get '/viewroom' do
    erb :viewroom
  end

  post '/viewroom' do
    current_schedule = CurrentSchedule.new
    @free = RoomFinder.new(params[:week],params[:day], params[:period])
    erb :viewroom
  end

end
