require 'sinatra'  # add sinatra web server
require 'sinatra/activerecord' # add sinatra active-record

set :database, 'sqlite3:///test_app.sqlite3' # add db file

require "./models"  #require the models folder

# Routes

get "/" do  # when a user lands on the root page, the "home" file (in the roots folder) is served up by sinatra -- YAY!
	
	@user1 = User.find(1)
	@user2 = User.find(2)
	@user3 = User.find(3)
	@user4 = User.find(4)
	erb :home
		
end