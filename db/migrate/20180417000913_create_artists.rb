class CreateArtists < ActiveRecord::Migration[5.1]
  def change
		create_table :artists do |t|
			t.string :name
			t.string :hometown
			t.string :pet
			
    end
  end
end
