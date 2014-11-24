require 'httparty'


def degrees_of_seperation(username1, username2)
	found = false
	degrees = 0

	if username1 == username2
		return 'Hey, that\'s you'
	end

	following = HTTParty.get("https://api.github.com/users/#{username1}/following/")

	if(!found)
	#do something recursives
	end


end


