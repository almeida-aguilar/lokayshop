class Pedido < ApplicationRecord
  belongs_to :comprador, class_name: 'Usuario'
  belongs_to :producto
  has_one :resena, dependent: :destroy

  enum :estado_pedido, { interesado: 0, vendido: 1, cancelado: 2 }

  validates :mensaje_inicial, presence: true

  # Validación personalizada: el comprador no puede ser el vendedor
  validate :comprador_diferente_vendedor

  private

  def comprador_diferente_vendedor
    return unless comprador_id && producto_id

    vendedor_id = producto.tienda.propetario_id
    if comprador_id == vendedor_id
      errors.add(:comprador, 'no puede ser el mismo que el vendedor del producto')
    end
  end
end