require 'spec_helper'
require 'rack/test'

describe Chitter do
  include Rack::Test::Methods

  def app
    Chitter
  end


  it 'sends a message to the user when user signs up' do
    expect_any_instance_of(app).to receive(:send_email)
    post '/users', params={email: "example@email.com",
                          username: "Adrian17",
                          password: "adrian1",
                          password_confirmation: 'adrian1'}
  end

end
