require 'HTTParty'
require 'sinatra'
require 'JSON'

before do
  response = HTTParty.get "https://george-vustrey-weather.p.mashape.com/api.php?location=#{params[:location]}",
  headers:{
  "X-Mashape-Key" => "jlbSQsaoANmshekfpU6szOkMTbE3p1wxJGBjsnqDnr7MjRv80f"
  }

  @payload = JSON.parse(response.body.read)
end


get '/:location' do
  @payload
end