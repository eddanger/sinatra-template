require File.dirname(__FILE__) + '/spec_helper'

describe "Application" do
  include Rack::Test::Methods

  def app
    @app ||= Application.new
  end

  it "should respond to /" do
    get '/'
    last_response.should be_ok
  end
end