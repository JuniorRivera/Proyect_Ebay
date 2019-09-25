class Product < ActiveRecord::Base
  attr_accessible :categoria, :nombre, :descripción, :precio

  validates :nombre, :presence => true,
                    :length => { :minimum => 5 }
end
