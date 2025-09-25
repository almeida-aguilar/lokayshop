class Resena < ApplicationRecord
  self.primary_key = :pedido_id
  
  belongs_to :pedido

  validates :calificacion, presence: true, inclusion: { in: 1..5 }
  
  # Validación personalizada: solo pedidos vendidos pueden ser reseñados
  validate :pedido_debe_estar_vendido

  private

  def pedido_debe_estar_vendido
    return unless pedido

    unless pedido.vendido?
      errors.add(:pedido, 'debe estar en estado vendido para poder ser reseñado')
    end
  end
end