# db/seeds.rb
# =========================================================
# SEEDS PARA LOKAY SHOP - MARKETPLACE MVP
# =========================================================
# Datos sintéticos convertidos desde el SQL original
# Fecha: Septiembre 2025
# =========================================================

# Limpiar datos existentes (opcional - descomentar si necesitas resetear)
# Resena.delete_all
# Pedido.delete_all
# Producto.delete_all
# Tienda.delete_all
# CategoriaProducto.delete_all
# CategoriaTienda.delete_all
# Usuario.delete_all

puts "🌱 Iniciando seeds para Lokay Shop..."

# ---------------------------------------------------------
# USUARIOS (15 usuarios para testing)
# ---------------------------------------------------------
puts "👥 Creando usuarios..."

usuarios = Usuario.create!([
  {
    nombre: 'María',
    apellido: 'García',
    correo: 'maria.garcia@email.com',
    telefono: '+51987654321',
    emoji_perfil: '👩',
    contrasena: 'maria123'
  },
  {
    nombre: 'Carlos',
    apellido: 'López',
    correo: 'carlos.lopez@email.com',
    telefono: '+51976543210',
    emoji_perfil: '👨',
    contrasena: 'carlos456'
  },
  {
    nombre: 'Ana',
    apellido: 'Martínez',
    correo: 'ana.martinez@email.com',
    telefono: '+51965432109',
    emoji_perfil: '🙋‍♀️',
    contrasena: 'ana789'
  },
  {
    nombre: 'Luis',
    apellido: 'Rodríguez',
    correo: 'luis.rodriguez@email.com',
    telefono: '+51954321098',
    emoji_perfil: '👨‍💼',
    contrasena: 'luis2024'
  },
  {
    nombre: 'Carmen',
    apellido: 'Fernández',
    correo: 'carmen.fernandez@email.com',
    telefono: '+51943210987',
    emoji_perfil: '👩‍🦳',
    contrasena: 'carmen555'
  },
  {
    nombre: 'Diego',
    apellido: 'Sánchez',
    correo: 'diego.sanchez@email.com',
    telefono: '+51932109876',
    emoji_perfil: '🧑',
    contrasena: 'diego888'
  },
  {
    nombre: 'Sofía',
    apellido: 'Torres',
    correo: 'sofia.torres@email.com',
    telefono: '+51921098765',
    emoji_perfil: '👩‍🎓',
    contrasena: 'sofia999'
  },
  {
    nombre: 'Javier',
    apellido: 'Ramírez',
    correo: 'javier.ramirez@email.com',
    telefono: '+51910987654',
    emoji_perfil: '👨‍🔧',
    contrasena: 'javier111'
  },
  {
    nombre: 'Lucía',
    apellido: 'Flores',
    correo: 'lucia.flores@email.com',
    telefono: '+51909876543',
    emoji_perfil: '👸',
    contrasena: 'lucia222'
  },
  {
    nombre: 'Miguel',
    apellido: 'Vargas',
    correo: 'miguel.vargas@email.com',
    telefono: '+51998765432',
    emoji_perfil: '🤵',
    contrasena: 'miguel333'
  },
  {
    nombre: 'Isabella',
    apellido: 'Castro',
    correo: 'isabella.castro@email.com',
    telefono: '+51987654320',
    emoji_perfil: '👩‍🎨',
    contrasena: 'isabella444'
  },
  {
    nombre: 'Roberto',
    apellido: 'Mendoza',
    correo: 'roberto.mendoza@email.com',
    telefono: '+51976543219',
    emoji_perfil: '👨‍🍳',
    contrasena: 'roberto666'
  },
  {
    nombre: 'Valentina',
    apellido: 'Herrera',
    correo: 'valentina.herrera@email.com',
    telefono: '+51965432108',
    emoji_perfil: '💃',
    contrasena: 'valentina777'
  },
  {
    nombre: 'Andrés',
    apellido: 'Jiménez',
    correo: 'andres.jimenez@email.com',
    telefono: '+51954321097',
    emoji_perfil: '🏃‍♂️',
    contrasena: 'andres2025'
  },
  {
    nombre: 'Gabriela',
    apellido: 'Morales',
    correo: 'gabriela.morales@email.com',
    telefono: '+51943210986',
    emoji_perfil: '👩‍⚕️',
    contrasena: 'gabriela101'
  }
])

puts "✅ #{usuarios.count} usuarios creados"

# ---------------------------------------------------------
# CATEGORÍAS DE TIENDA (Nivel 1)
# ---------------------------------------------------------
puts "🏪 Creando categorías de tienda..."

# Usar find_or_create_by para IDs específicos
categoria_tiendas = []

categoria_tiendas << CategoriaTienda.find_or_create_by(id: 1) do |ct|
  ct.nombre = 'Variedad'
  ct.emoji_icono = '🛍️'
end

categoria_tiendas << CategoriaTienda.find_or_create_by(id: 2) do |ct|
  ct.nombre = 'Electrónicos'
  ct.emoji_icono = '📱'
end

categoria_tiendas << CategoriaTienda.find_or_create_by(id: 3) do |ct|
  ct.nombre = 'Ropa y Accesorios'
  ct.emoji_icono = '👕'
end

categoria_tiendas << CategoriaTienda.find_or_create_by(id: 4) do |ct|
  ct.nombre = 'Hogar'
  ct.emoji_icono = '🏠'
end

categoria_tiendas << CategoriaTienda.find_or_create_by(id: 5) do |ct|
  ct.nombre = 'Deportes'
  ct.emoji_icono = '⚽'
end

puts "✅ #{categoria_tiendas.count} categorías de tienda creadas"

# ---------------------------------------------------------
# CATEGORÍAS DE PRODUCTO (Nivel 2)
# ---------------------------------------------------------
puts "📦 Creando categorías de producto..."

categoria_productos = []

# Categorías hijas - Variedad (ID Tienda: 1)
categoria_productos << CategoriaProducto.find_or_create_by(id: 11) do |cp|
  cp.nombre = 'Productos Generales'
  cp.emoji_icono = '📦'
  cp.categoria_tienda_id = 1
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 12) do |cp|
  cp.nombre = 'Artículos Varios'
  cp.emoji_icono = '🎁'
  cp.categoria_tienda_id = 1
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 13) do |cp|
  cp.nombre = 'Otros'
  cp.emoji_icono = '🔮'
  cp.categoria_tienda_id = 1
end

# Categorías hijas - Electrónicos (ID Tienda: 2)
categoria_productos << CategoriaProducto.find_or_create_by(id: 21) do |cp|
  cp.nombre = 'Smartphones'
  cp.emoji_icono = '📱'
  cp.categoria_tienda_id = 2
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 22) do |cp|
  cp.nombre = 'Laptops'
  cp.emoji_icono = '💻'
  cp.categoria_tienda_id = 2
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 23) do |cp|
  cp.nombre = 'Auriculares'
  cp.emoji_icono = '🎧'
  cp.categoria_tienda_id = 2
end

# Categorías hijas - Ropa y Accesorios (ID Tienda: 3)
categoria_productos << CategoriaProducto.find_or_create_by(id: 31) do |cp|
  cp.nombre = 'Ropa Hombre'
  cp.emoji_icono = '👔'
  cp.categoria_tienda_id = 3
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 32) do |cp|
  cp.nombre = 'Ropa Mujer'
  cp.emoji_icono = '👗'
  cp.categoria_tienda_id = 3
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 33) do |cp|
  cp.nombre = 'Calzado'
  cp.emoji_icono = '👟'
  cp.categoria_tienda_id = 3
end

# Categorías hijas - Hogar (ID Tienda: 4)
categoria_productos << CategoriaProducto.find_or_create_by(id: 41) do |cp|
  cp.nombre = 'Muebles'
  cp.emoji_icono = '🪑'
  cp.categoria_tienda_id = 4
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 42) do |cp|
  cp.nombre = 'Cocina'
  cp.emoji_icono = '🍳'
  cp.categoria_tienda_id = 4
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 43) do |cp|
  cp.nombre = 'Decoración'
  cp.emoji_icono = '🖼️'
  cp.categoria_tienda_id = 4
end

# Categorías hijas - Deportes (ID Tienda: 5)
categoria_productos << CategoriaProducto.find_or_create_by(id: 51) do |cp|
  cp.nombre = 'Fútbol'
  cp.emoji_icono = '⚽'
  cp.categoria_tienda_id = 5
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 52) do |cp|
  cp.nombre = 'Fitness'
  cp.emoji_icono = '💪'
  cp.categoria_tienda_id = 5
end

categoria_productos << CategoriaProducto.find_or_create_by(id: 53) do |cp|
  cp.nombre = 'Ciclismo'
  cp.emoji_icono = '🚴'
  cp.categoria_tienda_id = 5
end

puts "✅ #{categoria_productos.count} categorías de producto creadas"

# ---------------------------------------------------------
# TIENDAS (5 tiendas, una por categoría de tienda)
# ---------------------------------------------------------
puts "🏪 Creando tiendas..."

tiendas = Tienda.create!([
  {
    nombre: 'Tienda de María',
    descripcion: 'Todo lo que necesitas en un solo lugar. Variedad de productos para toda la familia.',
    emoji_logo: '🛍️',
    propetario: usuarios[0], # María (ID: 1)
    categoria_principal_id: 1
  },
  {
    nombre: 'TechStore Lima',
    descripcion: 'Los mejores dispositivos electrónicos al mejor precio. Smartphones, laptops y más.',
    emoji_logo: '⚡',
    propetario: usuarios[1], # Carlos (ID: 2)
    categoria_principal_id: 2
  },
  {
    nombre: 'Moda & Estilo',
    descripcion: 'Ropa trendy para hombres y mujeres. Las últimas tendencias de la moda.',
    emoji_logo: '👗',
    propetario: usuarios[2], # Ana (ID: 3)
    categoria_principal_id: 3
  },
  {
    nombre: 'Casa & Hogar',
    descripcion: 'Muebles, decoración y todo para tu hogar. Convierte tu casa en un lugar especial.',
    emoji_logo: '🏡',
    propetario: usuarios[3], # Luis (ID: 4)
    categoria_principal_id: 4
  },
  {
    nombre: 'Deportes Total',
    descripcion: 'Equipamiento deportivo de calidad. Fútbol, fitness, ciclismo y más.',
    emoji_logo: '🏆',
    propetario: usuarios[0], # María (ID: 1) - Nota: María tiene 2 tiendas según el SQL
    categoria_principal_id: 5
  }
])

puts "✅ #{tiendas.count} tiendas creadas"

# ---------------------------------------------------------
# PRODUCTOS (13 productos distribuidos en las 5 tiendas)
# ---------------------------------------------------------
puts "🛒 Creando productos..."

productos = Producto.create!([
  # Productos de Tienda de María (ID: 1)
  {
    nombre: 'Set de Utensilios de Cocina',
    descripcion: 'Juego completo de utensilios para cocina. Incluye espátulas, cucharones y más.',
    precio: 45.90,
    imagen_url: 'https://via.placeholder.com/400x300/FF9500/FFFFFF?text=Utensilios',
    stock: 15,
    tienda: tiendas[0],
    categoria_id: 11
  },
  {
    nombre: 'Organizador Multiuso',
    descripcion: 'Organizador versátil para el hogar u oficina. Múltiples compartimentos.',
    precio: 25.50,
    imagen_url: 'https://via.placeholder.com/400x300/28A745/FFFFFF?text=Organizador',
    stock: 8,
    tienda: tiendas[0],
    categoria_id: 12
  },
  
  # Productos de TechStore Lima (ID: 2)
  {
    nombre: 'iPhone 14 Pro',
    descripcion: 'Smartphone Apple iPhone 14 Pro 128GB. Cámara profesional y rendimiento excepcional.',
    precio: 3299.00,
    imagen_url: 'https://via.placeholder.com/400x300/007AFF/FFFFFF?text=iPhone+14',
    stock: 5,
    tienda: tiendas[1],
    categoria_id: 21
  },
  {
    nombre: 'MacBook Air M2',
    descripcion: 'Laptop Apple MacBook Air con chip M2. Ultradelgada y potente para trabajo profesional.',
    precio: 4899.00,
    imagen_url: 'https://via.placeholder.com/400x300/6C7B7F/FFFFFF?text=MacBook',
    stock: 3,
    tienda: tiendas[1],
    categoria_id: 22
  },
  {
    nombre: 'AirPods Pro',
    descripcion: 'Auriculares inalámbricos Apple AirPods Pro con cancelación de ruido activa.',
    precio: 899.00,
    imagen_url: 'https://via.placeholder.com/400x300/F5F5DC/000000?text=AirPods',
    stock: 12,
    tienda: tiendas[1],
    categoria_id: 23
  },
  
  # Productos de Moda & Estilo (ID: 3)
  {
    nombre: 'Camisa Casual Hombre',
    descripcion: 'Camisa de algodón para hombre, corte clásico. Perfecta para el día a día.',
    precio: 89.90,
    imagen_url: 'https://via.placeholder.com/400x300/4169E1/FFFFFF?text=Camisa',
    stock: 20,
    tienda: tiendas[2],
    categoria_id: 31
  },
  {
    nombre: 'Vestido Floral Mujer',
    descripcion: 'Hermoso vestido con estampado floral. Tela ligera y cómoda para cualquier ocasión.',
    precio: 129.90,
    imagen_url: 'https://via.placeholder.com/400x300/FF1493/FFFFFF?text=Vestido',
    stock: 15,
    tienda: tiendas[2],
    categoria_id: 32
  },
  {
    nombre: 'Zapatillas Deportivas',
    descripcion: 'Zapatillas cómodas para running y uso diario. Suela antideslizante.',
    precio: 199.90,
    imagen_url: 'https://via.placeholder.com/400x300/DC143C/FFFFFF?text=Zapatillas',
    stock: 25,
    tienda: tiendas[2],
    categoria_id: 33
  },
  
  # Productos de Casa & Hogar (ID: 4)
  {
    nombre: 'Mesa de Centro Moderna',
    descripcion: 'Mesa de centro de diseño moderno. Madera de calidad con acabado elegante.',
    precio: 350.00,
    imagen_url: 'https://via.placeholder.com/400x300/8B4513/FFFFFF?text=Mesa',
    stock: 6,
    tienda: tiendas[3],
    categoria_id: 41
  },
  {
    nombre: 'Set de Ollas Antiadherentes',
    descripcion: 'Juego de 3 ollas antiadherentes con tapas. Ideales para cocinar sin grasa.',
    precio: 180.00,
    imagen_url: 'https://via.placeholder.com/400x300/FF4500/FFFFFF?text=Ollas',
    stock: 10,
    tienda: tiendas[3],
    categoria_id: 42
  },
  
  # Productos de Deportes Total (ID: 5)
  {
    nombre: 'Balón de Fútbol Profesional',
    descripcion: 'Balón oficial FIFA para fútbol profesional. Cuero sintético de alta calidad.',
    precio: 85.00,
    imagen_url: 'https://via.placeholder.com/400x300/00FF00/000000?text=Balon',
    stock: 18,
    tienda: tiendas[4],
    categoria_id: 51
  },
  {
    nombre: 'Mancuernas Ajustables',
    descripcion: 'Par de mancuernas ajustables de 5kg a 25kg. Perfectas para entrenar en casa.',
    precio: 250.00,
    imagen_url: 'https://via.placeholder.com/400x300/800080/FFFFFF?text=Mancuernas',
    stock: 8,
    tienda: tiendas[4],
    categoria_id: 52
  },
  {
    nombre: 'Bicicleta Montaña',
    descripcion: 'Bicicleta de montaña con 21 velocidades. Ideal para aventuras off-road.',
    precio: 899.00,
    imagen_url: 'https://via.placeholder.com/400x300/228B22/FFFFFF?text=Bicicleta',
    stock: 4,
    tienda: tiendas[4],
    categoria_id: 53
  }
])

puts "✅ #{productos.count} productos creados"

# ---------------------------------------------------------
# PEDIDOS (14 pedidos de usuarios compradores)
# ---------------------------------------------------------
puts "📦 Creando pedidos..."

pedidos = Pedido.create!([
  # Pedidos con estado 'interesado' (6 pedidos)
  {
    comprador: usuarios[4], # Carmen (ID: 5)
    producto: productos[0], # Set de Utensilios (ID: 1)
    estado_pedido: :interesado,
    mensaje_inicial: '¡Hola! Me interesan estos utensilios de cocina. ¿Están disponibles?'
  },
  {
    comprador: usuarios[6], # Sofía (ID: 7)
    producto: productos[6], # Vestido Floral (ID: 7)
    estado_pedido: :interesado,
    mensaje_inicial: 'Me encanta este vestido floral. ¿Tienen talla M disponible?'
  },
  {
    comprador: usuarios[9], # Miguel (ID: 10)
    producto: productos[3], # MacBook Air (ID: 4)
    estado_pedido: :interesado,
    mensaje_inicial: '¿La MacBook viene con garantía? Me interesa para trabajo.'
  },
  {
    comprador: usuarios[10], # Isabella (ID: 11)
    producto: productos[1], # Organizador (ID: 2)
    estado_pedido: :interesado,
    mensaje_inicial: 'Este organizador sería ideal para mi oficina. ¿Qué medidas tiene?'
  },
  {
    comprador: usuarios[12], # Valentina (ID: 13)
    producto: productos[4], # AirPods (ID: 5)
    estado_pedido: :interesado,
    mensaje_inicial: 'Los AirPods son originales, ¿verdad? Me interesa comprarlos.'
  },
  {
    comprador: usuarios[14], # Gabriela (ID: 15)
    producto: productos[3], # MacBook Air (ID: 4)
    estado_pedido: :interesado,
    mensaje_inicial: 'Para mi consultorio médico necesito una laptop confiable. ¿Recomiendan esta?'
  },
  
  # Pedidos con estado 'vendido' (6 pedidos)
  {
    comprador: usuarios[5], # Diego (ID: 6)
    producto: productos[2], # iPhone 14 Pro (ID: 3)
    estado_pedido: :vendido,
    mensaje_inicial: 'Hola, quiero comprar este iPhone 14 Pro. ¿Puedo coordinar la entrega?'
  },
  {
    comprador: usuarios[6], # Sofía (ID: 7)
    producto: productos[8], # Mesa de Centro (ID: 9)
    estado_pedido: :vendido,
    mensaje_inicial: 'Busco una mesa de centro para mi sala. Esta se ve perfecta.'
  },
  {
    comprador: usuarios[7], # Javier (ID: 8)
    producto: productos[10], # Balón de Fútbol (ID: 11)
    estado_pedido: :vendido,
    mensaje_inicial: 'Necesito un balón para mi equipo de fútbol. ¿Es de buena calidad?'
  },
  {
    comprador: usuarios[9], # Miguel (ID: 10)
    producto: productos[11], # Mancuernas (ID: 12)
    estado_pedido: :vendido,
    mensaje_inicial: 'Perfecto para mi rutina de ejercicios en casa. ¿Incluye instructivo?'
  },
  {
    comprador: usuarios[11], # Roberto (ID: 12)
    producto: productos[9], # Set de Ollas (ID: 10)
    estado_pedido: :vendido,
    mensaje_inicial: 'Necesito ollas nuevas para mi restaurante. ¿Hacen descuento por cantidad?'
  },
  {
    comprador: usuarios[13], # Andrés (ID: 14)
    producto: productos[12], # Bicicleta (ID: 13)
    estado_pedido: :vendido,
    mensaje_inicial: 'Excelente bicicleta para montaña. ¿Puedo probarla antes de comprar?'
  },
  
  # Pedidos con estado 'cancelado' (2 pedidos)
  {
    comprador: usuarios[8], # Lucía (ID: 9)
    producto: productos[7], # Zapatillas (ID: 8)
    estado_pedido: :cancelado,
    mensaje_inicial: 'Hola, me interesaban estas zapatillas pero ya no las necesito.'
  },
  {
    comprador: usuarios[14], # Gabriela (ID: 15)
    producto: productos[5], # Camisa Casual (ID: 6)
    estado_pedido: :cancelado,
    mensaje_inicial: 'Me gustaba la camisa pero encontré una similar más barata.'
  }
])

puts "✅ #{pedidos.count} pedidos creados"

# ---------------------------------------------------------
# RESEÑAS (6 reseñas para todos los pedidos vendidos)
# ---------------------------------------------------------
puts "⭐ Creando reseñas..."

# Filtrar solo los pedidos vendidos para las reseñas
pedidos_vendidos = pedidos.select { |p| p.vendido? }

resenas = []

# Reseña para pedido 7 (iPhone 14 Pro)
resenas << Resena.create!(
  pedido: pedidos_vendidos[0],
  calificacion: 5,
  comentario: 'Excelente producto y servicio. El iPhone llegó en perfectas condiciones y tal como se describía. Carlos fue muy profesional en la entrega. ¡Recomiendo esta tienda 100%!'
)

# Reseña para pedido 8 (Mesa de Centro)
resenas << Resena.create!(
  pedido: pedidos_vendidos[1],
  calificacion: 4,
  comentario: 'La mesa es hermosa y de buena calidad. Llegó bien empacada aunque tardó un poco más de lo esperado. Luis fue amable en todo momento. Estoy contenta con la compra.'
)

# Reseña para pedido 9 (Balón de Fútbol)
resenas << Resena.create!(
  pedido: pedidos_vendidos[2],
  calificacion: 4,
  comentario: 'Buen balón de fútbol, la calidad es buena aunque esperaba que fuera un poco más resistente. La entrega fue rápida. En general estoy satisfecho con la compra.'
)

# Reseña para pedido 10 (Mancuernas)
resenas << Resena.create!(
  pedido: pedidos_vendidos[3],
  calificacion: 5,
  comentario: 'Mancuernas excelentes para entrenar en casa. Son ajustables como prometían y muy fáciles de usar. María me explicó muy bien cómo funcionan. ¡Súper recomendado!'
)

# Reseña para pedido 11 (Set de Ollas)
resenas << Resena.create!(
  pedido: pedidos_vendidos[4],
  calificacion: 5,
  comentario: 'Las ollas son de excelente calidad, perfectas para mi restaurante. Antiadherentes de verdad y muy fáciles de limpiar. Luis me dio un buen descuento por cantidad. ¡Volveré a comprar!'
)

# Reseña para pedido 12 (Bicicleta)
resenas << Resena.create!(
  pedido: pedidos_vendidos[5],
  calificacion: 3,
  comentario: 'La bicicleta funciona bien pero tenía algunas rayones menores. Las velocidades cambian correctamente. María fue atenta pero esperaba mejor empaque. Precio justo.'
)

puts "✅ #{resenas.count} reseñas creadas"

# ---------------------------------------------------------
# RESUMEN FINAL
# ---------------------------------------------------------
puts "\n🎉 ¡Seeds completados exitosamente!"
puts "=" * 50
puts "📊 Resumen de datos creados:"
puts "👥 Usuarios: #{Usuario.count}"
puts "🏪 Categorías de Tienda: #{CategoriaTienda.count}"
puts "📦 Categorías de Producto: #{CategoriaProducto.count}"
puts "🏪 Tiendas: #{Tienda.count}"
puts "🛒 Productos: #{Producto.count}"
puts "📦 Pedidos: #{Pedido.count}"
puts "   - Interesados: #{Pedido.interesado.count}"
puts "   - Vendidos: #{Pedido.vendido.count}"
puts "   - Cancelados: #{Pedido.cancelado.count}"
puts "⭐ Reseñas: #{Resena.count}"
puts "=" * 50
puts "✨ La base de datos está lista para usar!"