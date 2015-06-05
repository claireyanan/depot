class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title # generated original
  def change
		create_table :products do |t|
			t.string :title
			t.text :description 
			t.string :image_url
			t.decimal :price, precision: 8, scale: 2
  		t.timestamps
		end 
	end
end
