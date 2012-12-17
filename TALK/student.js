Person = function(first_name,last_name){
	this.first_name = first_name
	this.last_name = last_name
}

Person.prototype.toString = function(){
	return this.first_name+" "+this.last_name
}

Student = function(first_name, last_name, index){
	this.index = index
	this.person = new Person(first_name, last_name)
}

Student.prototype.toString = function(){
	return this.person.toString()+" "+this.index
}

// Test the thing...
var assert = require('assert')

var jn = new Person("Janez","Novak")
var me = new Student("Oto","Brglez","936...")

assert.equal(jn.toString(), "Janez Novak")
assert.equal(me.toString(), "Oto Brglez 936...")

// Pass even if wrongly implemented...

