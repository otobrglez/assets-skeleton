class Person
	constructor: (@first_name, @last_name)->
  
	toString: ->
		"#{@first_name} #{@last_name}"

class Student extends Person
	constructor: (@first_name, @last_name, @index)->
		super(@first_name, @last_name)
	
	toString: ->
		"#{super} #{@index}"

assert = require 'assert'

jn = new Person("Janez","Novak")
me = new Student("Oto","Brglez","936...")

assert.equal jn.toString(), "Janez Novak"
assert.equal me.toString(), "Oto Brglez 936..."

