FactoryGirl.define do
  
  factory :artist do |a|
  	sequence(:name){|n| "Mumford and Sons#{n}" }
  end

  factory :album do
  	name "Babel"
  	artist
  end

  factory :song do
  	name "Monster"
  	album
  end

 end