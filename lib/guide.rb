# require other class
require 'restaurant'

# guide class 
class Guide 
# this one has flexibility
	def initialize(path=nil)
		#locate the restaurant text file 
		Restaurant.filepath = path
		if Restaurant.file_exists?
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
		#do action 
		#repeat until user quits 
		conclusion
	end 

	def introduction 
		puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
		puts "This is an interactive guide to help you find the food you crave. \n\n"
	end 

	def conclusion 
		puts "\n <<< Goodbye and Bon Appetit>>>\n\n\n"
	end 
end 