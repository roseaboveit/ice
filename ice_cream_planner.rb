# Get info from a user and returns a hash
class PartyPref
	attr_accessor :ice_cream_hash, :flavors

	def initialize
		@ice_cream_hash = {}
		@flavors = []
	end

	def get_info
		puts "What is your name?"
		name = gets.chomp
		puts "What is your favorite flavor of ice cream"
		flavor = gets.chomp
		usr_hash = {name => flavor}
		# @flavors.push(flavor)
	end

	# Merge the hashes into a master hash
	def merge_usr_icecream_choice(input_hash)
		@ice_cream_hash.merge!(input_hash)
	end
	# Gets the hashes of multiple users
	def get_another_user #---->Array
		puts "Are there any more guests coming?"
		more_guests = gets.chomp
		until more_guests == "no"
			merge_usr_icecream_choice(get_info)
			puts "Are there any more guests coming?"
			more_guests = gets.chomp
		end	
		@ice_cream_hash	

		@ice_cream_hash.each do |key, value|
			@flavors.push(value)
		end
		@flavors.sort
	end

end

birthday = PartyPref.new.get_another_user
puts birthday

#puts PartyPref.new.get_flavors