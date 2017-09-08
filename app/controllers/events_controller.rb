class EventsController < ApplicationController
  def get_events
      response = HTTParty.get( "https://api.meetup.com/#{params["group"]}/events?key=#{ENV['MEETUP_API_KEY']}")
      results = JSON.parse(response.body)
      render json: results, status: :ok
  end
end
