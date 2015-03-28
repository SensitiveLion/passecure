require "sinatra"
require "pry"

require_relative "common_tests"
require_relative "harder_tests"
require_relative "common_passwords"
require_relative "testing"
require_relative "password_summary"
require_relative "password_generation"

use Rack::Session::Cookie, :secret => 'change_me',
                           :expire_after => 600

@random = nil
@check_password = nil

get "/" do
  erb :page
end

post "/" do
  @test = params["password"]
  @check_password = PasswordSummary.new(@test)
  session[:check] = @check_password
  redirect "/"
end

post "/generate" do
  @random = Generate.secure
  session[:generate] = @random
  redirect "/"
end

post "/reset" do
  @random = nil
  @check_password = nil
  session[:generate] = @random
  session[:check] = @check_password
  redirect "/"
end

