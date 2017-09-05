class EventsController < ApplicationController
  def get_events
      response = HTTParty.get( "https://api.meetup.com/#{params["group"]}/events?key=2b29401627d681d58754561bb2c13")
      results = JSON.parse(response.body)
      render json: results, status: :ok
  end
end
