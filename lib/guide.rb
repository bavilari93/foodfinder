# require other class
require 'restaurant'

# guide class 
class Guide 
# this one has flexibility
	def initialize(path=nil)
		#locate the restaurant text file 
		Restaurant.filepath = path
		if Restaurant.file_usable?
			puts "found restaurant file"
		#o create the file 
	    elsif Restaurant.create_file
	    	puts "create restaurant file"
		#exit if create fails
		else 
			puts "Exit. \n\n"
		# this one allows to exit from anywhere on the script
			exit!
		end
	end 

	def launch!
		introduction
		#action loop
		#user action ( list, find , add , quit )
		loop do
			print">"
			user_response = gets.chomp
			result = do_action(user_response)
			break if result == :quit
		end
		#do action 
		#repeat until user quits 
		conclusion
	end 

	def do_action(action)
		case action 
		when "list"
			puts "listing"
		when "find"
			puts "finding"
		when "add"
			puts 'adding'
		when "quit"
			return :quit
		else
			puts "\n i don;t undertand that command"
		end
	end

	def introduction 
		puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
		puts "This is an interactive guide to help you find the food you crave. \n\n"
	end 

	def conclusion 
		puts "\n <<< Goodbye and Bon Appetit>>>\n\n\n"
	end 
end 