class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
			t.string :name
			t.string :city
			t.string :state
			t.string :url
			
      t.timestamps
    end
  end
end
