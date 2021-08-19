class Api::RequestSerializer < ApplicationSerializer

  attributes :id, :email, :message, :coach_id, :errors

end
