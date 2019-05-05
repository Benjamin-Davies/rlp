require 'sinatra'
require './openlp/remote.rb'

class App < Sinatra::Base
  get '/api/live/next' do
    $live.next
  end

  get '/api/live/prev' do
    $live.prev
  end
end
