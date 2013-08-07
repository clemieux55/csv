require 'factory_girl'

attributes = [:lastname, :firstname, :gender, :birthday, :favoritecolor]

FactoryGirl.define do 
	factory :person do 
		attributes.each do |attribute|
			sequence(:attribute) {|n| attribute#{n} }
		end
	end
end




