require 'rspec'
require 'factory_girl'
require_relative "person.rb"
require 'pry'

describe 'People' do 

	before :each do 
		FactoryGirl.create(:people)
	end

	let!(:prev_count) { People.count }
	let(:test) { People.import_from_csv("persons.csv") }
	let(:person) { FactoryGirl.create(:people) }

	it "returns an array" do 
		expect(test).to be_kind_of(Array)
		expect(test).to_not be(nil)
	end

	it 'creates a valid person' do 
		person
		expect(People.count).to eql(prev_count + 1)
	end

	it 'will not create invalide attributes' do
		FactoryGirl.create(:people, lastname: "")
		expect(People.count).to eql(prev_count + 1)
	end
end



attributes = ["lastname", "firstname", "gender", "birthday", "favoritecolor"]

FactoryGirl.define do 
	factory :people do 
		attributes.each do |attribute|
			sequence(attribute.to_sym) {|n| "attr#{n}bute" } 
		end
	end
end




