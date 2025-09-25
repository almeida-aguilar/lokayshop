class Producto < ApplicationRecord
  belongs_to :tienda
  belongs_to :categoria, class_name: 'CategoriaProducto'
  has_many :pedidos, dependent: :destroy

  validates :nombre, presence: true, length: { maximum: 255 }
  validates :descripcion, presence: true
  validates :precio, presence: true, numericality: { greater_than: 0 }
  validates :imagen_url, presence: true, length: { maximum: 500 }
  validates :stock, presence: true, numericality: { greater_than_or_equal_to: 0 }
end