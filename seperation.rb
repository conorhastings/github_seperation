require 'httparty'
require 'pry'


def degrees_of_seperation(username1, username2)
	found = false
	degrees = 1
	looked = []

	# if username1 == username2
	# 	return 'Hey, that\'s you'
	# end
	if(!found)
		following = HTTParty.get("https://api.github.com/users/#{username1}/following?access_token=4bf673941f076ccdd53ebd9a4cc3fc3170ea9b3d")
		following.each do |follow|
			if follow["login"].downcase == username2.downcase
				found = true
				if(found)
					break
				end
			end
		end


		following.each do |following2|
			puts looked
			unless looked.include? following2["login"]
				looked.push(following2["login"])
				degrees_of_seperation(following2["login"],username2)
			end
		end
		if(!found)
			degrees +=1
		end
	end

	if(found)
		return "#{degrees} degree(s) of seperation"

	else
		return degrees
	end

end


binding.pry
