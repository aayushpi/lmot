class SessionsController < ApplicationController
	def create
		raise env["omniauth.auth"].to_yaml
		Twitter.configure do |config|
			config.consumer_key ="r1lMHASAFct6rZgb6hwnZw"
			config.consumer_secret = "fYcbQ3obglIt0zdYjlKku0slUMcn2HB8p7674brOY"
			config.oauth_token = request.env["omniauth.auth"]["credentials"]["token"]
			config.oauth_token_secret = request.env["omnauth.auth"]["credentials"]["secret"]
		end

		session[:user_id] = request.env["omniauth.auth"]["info"]["nickname"]
		redirect_to root_url, notice: "Signed in!"
	end

	def signout
		session[:user_id] = nil
		reset_session
		redirect_to root_url, notice:"Signed in!"
	end
end