require './app.rb'

use Rack::Static,
  :urls => ['scripts', 'styles'],
  :root => 'public',
  :index => 'index.html'

run App
