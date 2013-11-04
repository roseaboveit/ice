# Get info from a user and returns a hash
class Party_pref
	attr_accessor :ice_cream_hash

	def initialize
		@ice_cream_hash = {}
	end

	def get_info
		puts "What is your name?"
		name = gets.chomp
		puts "What is your favorite flavor of ice cream"
		flavor = gets.chomp
		usr_hash = {name => flavor}
	end
	# Merge the hashes into a master hash
	def merge_usr_icecream_choice(master_hash, input_hash)
		master_hash.merge(input_hash)
	end
	# Gets the hashes of multiple users
	def get_another_user
		puts "Are there any more guests coming?"
		more_guests = gets.chomp
		until more_guests == "no"
			merge_usr_icecream_choice(@ice_cream_hash, get_info)
			puts "Are there any more guests coming?"
			more_guests = gets.chomp
		end	
		@ice_cream_hash
	end

puts get_another_user
end