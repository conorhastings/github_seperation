require 'httparty'
require 'pry'


def degrees_of_seperation(username1, username2)
	found = false
	degrees = 1

	if username1 == username2
		return 'Hey, that\'s you'
	end

	following = HTTParty.get("https://api.github.com/users/#{username1}/following")
	following.each do |follow|
		puts follow
		if follow["login"].downcase == username2.downcase
			found = true

		end
	end

	if(!found)
		degrees += 1
		following.each do |follow|
			degrees_of_seperation(follow["login"],username2)
		end

	else
		return "something should be returned if you find someone with #{degrees}"
	end


end


binding.pry
