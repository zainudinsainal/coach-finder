class Api::CoachSerializer < ApplicationSerializer

  attributes :id, :first_name, :last_name, :areas, :description, :hourly_rate, :errors

end
