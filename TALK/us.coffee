_ = require 'underscore'

out = (t)-> console.log t

names = ["Oto","Luka","Janez","Miha","Jani"]

# All names to upcase.
out _.map names, (name)->
	name.toUpperCase()

# Reject some folks
out _.reject names, (name)->
	name == "Oto"

# Count where name start with letter "J"
out _.countBy names, (name)->
	name.match /^J/i	



