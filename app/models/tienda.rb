class Tienda < ApplicationRecord
  belongs_to :propetario, class_name: 'Usuario'
  belongs_to :categoria_principal, class_name: 'CategoriaTienda'
  has_many :productos, dependent: :destroy

  validates :nombre, presence: true, length: { maximum: 255 }
  validates :descripcion, presence: true
  validates :emoji_logo, presence: true, length: { maximum: 10 }
end