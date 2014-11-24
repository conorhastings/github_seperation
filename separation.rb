require 'httparty'
require 'pry'


def degrees_of_seperation(username1, username2)
	found = false
	degrees = 1
	looked = []
	next = 0


	# if username1 == username2
	# 	return 'Hey, that\'s you'
	# end
	if(!found)
		following = HTTParty.get("https://api.github.com/users/#{username1}/following?access_token=4bf673941f076ccdd53ebd9a4cc3fc3170ea9b3d")
		
	end

	if(found)
		return "#{degrees} degree(s) of seperation"

	else
		return degrees
	end

end


binding.pry
