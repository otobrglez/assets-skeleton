FactoryGirl.define do

  factory :rails, class: Tool do
    name "Ruby on Rails"
    url "http://rubyonrails.org"
  end

  factory :backbone, class: Tool do
    name "Backbone.js"
    url "http://backbonejs.org/"
  end

  factory :underscore, class: Tool do
    name "Underscore"
    url "http://underscorejs.org"
  end

end