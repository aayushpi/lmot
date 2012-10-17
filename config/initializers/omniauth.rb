Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, "r1lMHASAFct6rZgb6hwnZw", "fYcbQ3obglIt0zdYjlKku0slUMcn2HB8p7674brOY"
end


=begin

Twitter.configure do |config|
#APP TOKENS  
  config.consumer_key = "r1lMHASAFct6rZgb6hwnZw"
  config.consumer_secret = "fYcbQ3obglIt0zdYjlKku0slUMcn2HB8p7674brOY"
 #PERSONAL TOKENS: 
  config.oauth_token = "165833036-SJ0Hwy03p6tOZMKmmG6PP3OTYJY3vmJ1OTGSDVP5"
  config.oauth_token_secret = "gVA7QUDUYz3apAxlzrm3UI3oWO8xAkFwogcjCydWS0"
end

Twitter.configure do |config|
#APP TOKENS  
  config.consumer_key = "r1lMHASAFct6rZgb6hwnZw"
  config.consumer_secret = "fYcbQ3obglIt0zdYjlKku0slUMcn2HB8p7674brOY"
 #PERSONAL TOKENS: 
  config.oauth_token = take this from omniauth
  config.oauth_token_secret = take this from omniauth
end

*/

=end