#/bin/ruby
require 'yaml'
require 'pry'
# to-do by joshua cooper
# license FREEBSD - Be awesome.
# create daily items
# create daily fill in items - 3 
# create day specific items IE: w - water cats

# identify the day of the week.

# pull in to-do's from the yaml file.
cnf = YAML::load_file(File.join(__dir__, 'to-do.yaml'))

# the daily to-do list
todo=cnf["daily"]
puts todo.count
if todo.count > 0
	for i in todo
   		puts "[ ]"+i
	end
end

# the day specific to-do list
# this statement grabs the day of the week and downcases it, then sets that day's list
todo=cnf[Date.today.strftime("%A").downcase]
# if the list is nil print nothing statement. If it isn't nil print the list.
if todo.nil? == false
	for i in todo
		puts "[ ]"+i
	end
else
	puts "Nothing day specific today"
end