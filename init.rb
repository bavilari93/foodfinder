#set the file path 

# this one get the relative path
APP_ROOT = File.dirname(__FILE__)

#this is where the app will have the logic
# require "{APP_ROOT/lib/guide}"

# other practice . this one joins and looks for the directory lib 
$:.unshift(File.join(APP_ROOT, 'lib'))

# then we require the file 
require 'guide'
guide = Guide.new('restaurants.txt')
guide.launch!