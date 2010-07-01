class AddSampleRecordsToProducts < ActiveRecord::Migration
  def self.up
  	Product.create.update_attributes(:title=>"Alma", :price=>500, :description=>"kerek gyümölcs   kerek gyümölcs   kerek gyümölcs   kerek gyümölcs   kerek gyümölcs   kerek gyümölcs   kerek gyümölcs   kerek gyümölcs   kerek gyümölcs   kerek gyümölcs   kerek gyümölcs   ", :image=>"apple.jpg")
  	Product.create.update_attributes(:title=>"Körte", :price=>600, :description=>"Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   Sárga gyümölcs   ", :image=>"pear.jpg")
  	Product.create.update_attributes(:title=>"Dinnye", :price=>1200, :description=>"Nagy nagy gyümölcs    Nagy nagy gyümölcs    Nagy nagy gyümölcs    Nagy nagy gyümölcs    Nagy nagy gyümölcs    Nagy nagy gyümölcs    Nagy nagy gyümölcs    Nagy nagy gyümölcs    Nagy nagy gyümölcs    Nagy nagy gyümölcs    ", :image=>"watermelon.jpg")
  	Product.create.update_attributes(:title=>"Kolbász", :price=>800, :description=>"Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    Szendvicsbe rakható    ", :image=>"kolbasz.jpg")
  	Product.create.update_attributes(:title=>"Jégcsákány", :price=>8400, :description=>"Keni vágja. Sharon Stone is ezt venné!!!
 Keni vágja. Sharon Stone is ezt venné!!!
 Keni vágja. Sharon Stone is ezt venné!!!
 Keni vágja. Sharon Stone is ezt venné!!!
 ", :image=>"jegcsakany.jpg")
  end

  def self.down
  end
end
