(function() {
  var Person, Student, assert, jn, me,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Person = (function() {

    function Person(first_name, last_name) {
      this.first_name = first_name;
      this.last_name = last_name;
    }

    Person.prototype.toString = function() {
      return "" + this.first_name + " " + this.last_name;
    };

    return Person;

  })();

  Student = (function(_super) {

    __extends(Student, _super);

    function Student(first_name, last_name, index) {
      this.first_name = first_name;
      this.last_name = last_name;
      this.index = index;
      Student.__super__.constructor.call(this, this.first_name, this.last_name);
    }

    Student.prototype.toString = function() {
      return "" + Student.__super__.toString.apply(this, arguments) + " " + this.index;
    };

    return Student;

  })(Person);

  assert = require('assert');

  jn = new Person("Janez", "Novak");

  me = new Student("Oto", "Brglez", "936...");

  assert.equal(jn.toString(), "Janez Novak");

  assert.equal(me.toString(), "Oto Brglez 936...");

}).call(this);
