class SessionsController < ApplicationController
	def create
		Twitter.configure do |config|
			config.consumer_key =
			config.consumer_secret =
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