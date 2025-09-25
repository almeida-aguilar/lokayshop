class TempDataDisplayController < ApplicationController
  def index
    @usuarios = Usuario.all
    @tiendas = Tienda.all
    @productos = Producto.all
    @pedidos = Pedido.all
    @resenas = Resena.all
    @categoria_productos = CategoriaProducto.all
    @categoria_tiendas = CategoriaTienda.all
  end
end
