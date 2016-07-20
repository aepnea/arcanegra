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

ProductType.create ([{name: 'tazas'}, \
					 {name: 'taza con platillo'}, \
					 {name: 'plato'}, \
					 {name: 'carcaza celular'}, \
					 {name: 'carcaza tablet'}, \
					 {name: 'cortina de baño'}, \
					 {name: 'lienzo'}, \
					 {name: 'polera'}, \
					 {name: 'poleron'}, \
					 {name: 'almohada'}])



####
#### DATOS DE PRUEBA
####

### Artistas de Prueba
Artist.create ([{firstname: 'artista1', lastname:'artistaapellido1', short_description:'hola soy artista', description:'hola soy un artista la zorra', email:'artista@arcanegra.cl', web:'www.artista.cl', address:'calle artista casa 2' , country:'Chile', phone:'09238094' }])
Artist.create ([{firstname: 'artista2', lastname:'artistaapellido2', short_description:'hola soy artista 2', description:'hola soy un artista la zorra 2', email:'artista2@arcanegra.cl', web:'www.artista2.cl', address:'calle artista casa 3' , country:'Chile', phone:'092380942' }])
Artist.create ([{firstname: 'artista3', lastname:'artistaapellido3', short_description:'hola soy artista 3', description:'hola soy un artista la zorra 3', email:'artista3@arcanegra.cl', web:'www.artista3.cl', address:'calle artista casa 4' , country:'Chile', phone:'092380943' }])

###
Product.create ([{product_type: '1', artist: '1', name: 'producto1', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '99000'} ])
		#		 {product_type: '2', artist: '2', name: 'producto2', short_description: '', description: '', on_sale: '', price: ''}, \
		#		 {product_type: '3', artist: '3', name: 'producto3', short_description: '', description: '', on_sale: '', price: ''}, \
		#		 {product_type: '4', artist: '1', name: 'producto4', short_description: '', description: '', on_sale: '', price: ''}, \
		#		 {product_type: '5', artist: '2', name: 'producto5', short_description: '', description: '', on_sale: '', price: ''}, \
		#		 {product_type: '6', artist: '3', name: 'producto6', short_description: '', description: '', on_sale: '', price: ''}, \
		#		 {product_type: '7', artist: '1', name: 'producto7', short_description: '', description: '', on_sale: '', price: ''}, \
		#		 {product_type: '8', artist: '2', name: 'producto8', short_description: '', description: '', on_sale: '', price: ''}, \
		#		 {product_type: '9', artist: '3', name: 'producto9', short_description: '', description: '', on_sale: '', price: ''} ])











