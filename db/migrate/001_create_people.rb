class CreatePeople < ActiveRecord::Migration

	def self.up 
		create_table :people do |t| 
			t.column :firstname, :string, null: false
			t.column :lastname, :string, null: false
			t.column :favorite_color, :string, null: false
			t.column :gender, :string, null: false
		end


	end
end