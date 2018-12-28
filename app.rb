require 'sinatra'
require 'sinatra/activerecord'
require 'json'

current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

class App < Sinatra::Base

  get '/' do
    "Hello, world!"
  end

  get '/entries' do
    content_type :json
    @entries = Entry.all.to_json
  end

  post '/entries' do
    entry = JSON.parse(request.body.read)
    @entries = Entry.create(entry)
    'Added entry'
  end

  delete '/entries/:id' do
    Entry.destroy(params[:id])
  end

  get '/questions' do
    @questions = Question.all.to_json
  end

end