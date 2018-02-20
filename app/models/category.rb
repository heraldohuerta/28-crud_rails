class Category < ApplicationRecord
  has_many :products , dependent: :destroy #dependent: :destroy permite eliminar todos los productos y su categoria asociada
end
