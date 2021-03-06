# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


State.create([{name: 'Región de Arica y Parinacota'}, \
			   {name: 'Región de Tarapacá'}, \
			   {name: 'Región de Antofagasta'}, \
			   {name: 'Región de Atacama'}, \
			   {name: 'Región de Coquimbo'}, \
			   {name: 'Región de Valparaíso'}, \
			   {name: 'Región Metropolitana'}, \
			   {name: 'Región del Libertador General Bernardo O\'Higgins'}, \
			   {name: 'Región del Maule'}, \
			   {name: 'Región del Biobío'}, \
			   {name: 'Región de La Araucanía'}, \
			   {name: 'Región de Los Ríos'}, \
			   {name: 'Región de Los Lagos'}, \
			   {name: 'Región de Aysén'}, \
			   {name: 'Región de Magallanes'}
			   ])



## tipos de producto

ProductType.create ([{name: 'mug'}, \
					 {name: 'juego de taza'}, \
					 {name: 'plato'}, \
					 {name: 'carcaza celular'}, \
#					 {name: 'carcaza tablet'}, \
#					 {name: 'cortina de baño'}, \
					 {name: 'lienzo'}, \
					 {name: 'polera'}, \
					 {name: 'poleron'}, \
					 {name: 'almohada'}, \
					 {name: 'zapatillas'}])



####
#### DATOS DE PRUEBA
####

### Artistas de Prueba
Artist.create ([{nickname: 'nickartista1', firstname: 'artista1', lastname:'artistaapellido1', short_description:'hola soy artista', description:'hola soy un artista la zorra', email:'artista@arcanegra.cl', web:'www.artista.cl', address:'calle artista casa 2' , country:'Chile', phone:'09238094' }])
Artist.create ([{nickname: 'nickartista2', firstname: 'artista2', lastname:'artistaapellido2', short_description:'hola soy artista 2', description:'hola soy un artista la zorra 2', email:'artista2@arcanegra.cl', web:'www.artista2.cl', address:'calle artista casa 3' , country:'Chile', phone:'092380942' }])
Artist.create ([{nickname: 'nickartista3', firstname: 'artista3', lastname:'artistaapellido3', short_description:'hola soy artista 3', description:'hola soy un artista la zorra 3', email:'artista3@arcanegra.cl', web:'www.artista3.cl', address:'calle artista casa 4' , country:'Chile', phone:'092380943' }])
###
Product.create ([{product_type_id: '1', artist_id: '1', name: 'producto1', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '99000', sku: 'FEKPDBIL'}, \
				 {product_type_id: '2', artist_id: '2', name: 'producto2', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'KMLYVJPD'}, \
				 {product_type_id: '2', artist_id: '2', name: 'producto10', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'DKJJFDSF'}, \
				 {product_type_id: '3', artist_id: '3', name: 'producto3', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'RBDPSQJH'}, \
				 {product_type_id: '4', artist_id: '1', name: 'producto4', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'QHNLJKCL'}, \
				 {product_type_id: '5', artist_id: '2', name: 'producto5', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'PSIEAHNC'}, \
				 {product_type_id: '6', artist_id: '3', name: 'producto6', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'NJDCBBIK'}, \
				 {product_type_id: '7', artist_id: '1', name: 'producto7', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'EDJCORTI'}, \
				 {product_type_id: '8', artist_id: '2', name: 'producto8', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'false', price: '9900', sku: 'IQQREBNG'}, \
				 {product_type_id: '9', artist_id: '3', name: 'producto9', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'false', price: '9900', sku: 'FNSDRTNC'} ])

OrderStatus.create ([{status: "Recivido"}, \
	 									 {status: "Elaborándose en el Arca"}, \
										 {status: "Viajando por los infinitos mares"}, \
										 {status: "Entregado"}])
PaymentType.create ([{name: "Transferencia"}, \
										 {name: "Webpay"}])

PaymentStatus.create ([{status: "No pagado", payment_type_id: '1'}, \
											 {status: "Esperando confirmación", payment_type_id: '1'}, \
											 {status: "Pagado", payment_type_id: '1'}, \
											 {status: "No Pagado", payment_type_id: '2'}, \
											 {status: "Pagado", payment_type_id: '2'} ])
