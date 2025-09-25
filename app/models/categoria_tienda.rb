class CategoriaTienda < ApplicationRecord
  has_many :categoria_productos, dependent: :destroy
  has_many :tiendas, foreign_key: 'categoria_principal_id', dependent: :restrict_with_error

  validates :nombre, presence: true, length: { maximum: 100 }
  validates :emoji_icono, presence: true, length: { maximum: 10 }
end