class Usuario < ApplicationRecord
  has_many :tiendas, foreign_key: 'propetario_id', dependent: :destroy
  has_many :pedidos, foreign_key: 'comprador_id', dependent: :destroy

  validates :nombre, presence: true, length: { maximum: 100 }
  validates :apellido, presence: true, length: { maximum: 100 }
  validates :correo, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :telefono, presence: true, length: { maximum: 20 }
  validates :contrasena, presence: true, length: { maximum: 50 }
end