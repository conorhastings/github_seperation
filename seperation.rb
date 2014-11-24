require 'httparty'
require 'pry'


def degrees_of_seperation(username1, username2)
	found = false
	degrees = 1

	puts username1

	# if username1 == username2
	# 	return 'Hey, that\'s you'
	# end

	following = HTTParty.get("https://api.github.com/users/#{username1}/following?access_token=4bf673941f076ccdd53ebd9a4cc3fc3170ea9b3d")
	if username1 == 'sean-west'
		puts 'huh'
	end
	following.each do |follow|
		# puts follow["login"]
		if follow["login"].downcase == username2.downcase
			found = true
		end
	end

	if(!found)
		following.each do |follow2|
			# puts follow2["login"]
			degrees_of_seperation(follow2["login"],username2)
			end
		degrees += 1
	else
		return "something should be returned if you find someone with #{degrees}"
	end


end


binding.pry
