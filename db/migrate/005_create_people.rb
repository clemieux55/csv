class CreatePeople < ActiveRecord::Migration


	def self.up 
		create_table :people do |t| 
			t.column :firstname, :string, null: false
			t.column :lastname, :string, null: false
			t.column :favoritecolor, :string, null: false
			t.column :birthday, :integer,  null: false
			t.column :gender, :string, null: false
		end
	end

	def self.down
		drop_table :people
	end
end

