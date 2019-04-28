require 'sinatra'
require 'net/http'

class App < Sinatra::Base
  get '/' do
    Net::HTTP.get 'localhost', '/api/controller/live/next', 4316
  end
end
