require 'net/http'
require 'json'

def request(path)
  p path
  return Net::HTTP.get 'localhost', '/api' + path, 4316
end

class Controller
  def initialize(id)
    @id = id
  end

  def next
    return req '/next'
  end

  def prev
    return req '/previous'
  end

  def req(path)
    return request '/controller/' + @id + path
  end
end

$live = Controller.new 'live'
$pre = Controller.new 'preview'
