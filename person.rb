require 'active_record'
require 'yaml'
require 'csv'

dbconfig = YAML::load(File.open('database.yml'))
ActiveRecord::Base.establish_connection(dbconfig)

class People < ActiveRecord::Base

	def self.format_date(date)
		date.gsub(/[\/]/, "").to_i
	end

	def self.import_from_csv(file)
		people = []
		CSV.foreach(file) do |row|
			people << row
		end
		people
	end


	private

	def self.create_person(attrs)
			Person.create(
			lastname: attrs.lastname,
			firstname: attrs.firstname,
			gender: attrs.gender,
			favoritecolor: attrs.favoritecolor,
			birthday: attrs.birthday
					)
	end
end


