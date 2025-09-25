class CategoriaProducto < ApplicationRecord
  belongs_to :categoria_tienda
  has_many :productos, foreign_key: 'categoria_id', dependent: :restrict_with_error

  validates :nombre, presence: true, length: { maximum: 100 }
  validates :emoji_icono, presence: true, length: { maximum: 10 }
end