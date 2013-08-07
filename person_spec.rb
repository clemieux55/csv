require 'rspec'
require 'factory_girl'
require_relative "person.rb"

describe 'People' do 
	let(:test) { People.import_from_csv("persons.csv") }

	it "returns an array" do 
		expect(test).to be_kind_of(Array)
		expect(test).to_not be(nil)
	end

	it 'creates a person' do 
		People.create_person(attrs)
	end



	def attrs
		{ lastname: rand(1000).to_s,
			firstname: rand_100.to_s,
			gender: "male",
			favoritecolor: "blue",
			birthday: format_date(person[4])
		}
	end
end


