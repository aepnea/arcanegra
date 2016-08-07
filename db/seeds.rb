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


City.create ([	{ name: 'Arica', state_id: '1'}, \
			  	{ name: 'Caleta Camarones', state_id: '1'}, \
			  	{ name: 'Caleta Vítor', state_id: '1'}, \
			  	{ name: 'Camarones', state_id: '1'}, \
			  	{ name: 'Chitita', state_id: '1'}, \
			  	{ name: 'Codpa', state_id: '1'}, \
			  	{ name: 'Cuya', state_id: '1'}, \
			  	{ name: 'Esquiña', state_id: '1'}, \
			  	{ name: 'Guañacagua', state_id: '1'}, \
			  	{ name: 'Las Maitas', state_id: '1'}, \
			  	{ name: 'Molinos', state_id: '1'}, \
			  	{ name: 'Poconchile', state_id: '1'}, \
			  	{ name: 'San Miguel de Azapa', state_id: '1'}, \
			  	{ name: 'Sora', state_id: '1'}, \
			  	{ name: 'Villa Frontera', state_id: '1'}, \
			  	{ name: 'Ancuta', state_id: '1'}, \
			 	{ name: 'Belén', state_id: '1'}, \
			 	{ name: 'Caquena', state_id: '1'}, \
				{ name: 'Chapiquiña', state_id: '1'}, \
				{ name: 'Chucuyo', state_id: '1'}, \
				{ name: 'Cosapilla', state_id: '1'}, \
				{ name: 'Guallatire', state_id: '1'}, \
     			{ name: 'Pachama', state_id: '1'}, \
				{ name: 'Parinacota', state_id: '1'}, \
				{ name: 'Putre', state_id: '1'}, \
				{ name: 'Saxamar', state_id: '1'}, \
				{ name: 'Socoroma', state_id: '1'}, \
				{ name: 'Tignamar', state_id: '1'}, \
				{ name: 'Visviri', state_id: '1'}, \
				{ name: 'Alto Hospicio ', state_id: '2'}, \
				{ name: 'Iquique ', state_id: '2'}, \
				{ name: 'Punta Patache ', state_id: '2'}, \
				{ name: 'Ancuaque ', state_id: '2'}, \
				{ name: 'Arabilla ', state_id: '2'}, \
				{ name: 'Caleta Buena ', state_id: '2'}, \
				{ name: 'Camiña ', state_id: '2'}, \
				{ name: 'Cancosa ', state_id: '2'}, \
				{ name: 'Cariquima ', state_id: '2'}, \
				{ name: 'Chapiquilta ', state_id: '2'}, \
				{ name: 'Chiapa ', state_id: '2'}, \
				{ name: 'Chijo ', state_id: '2'}, \
				{ name: 'Colchane ', state_id: '2'}, \
				{ name: 'Collacagua ', state_id: '2'}, \
				{ name: 'Enquelga ', state_id: '2'}, \
				{ name: 'Fuerte Baquedano ', state_id: '2'}, \
				{ name: 'Huara ', state_id: '2'}, \
				{ name: 'Huatacondo ', state_id: '2'}, \
				{ name: 'Huaviña ', state_id: '2'}, \
				{ name: 'Isluga ', state_id: '2'}, \
				{ name: 'La Huayca ', state_id: '2'}, \
				{ name: 'La Tirana ', state_id: '2'}, \
				{ name: 'Lirima ', state_id: '2'}, \
				{ name: 'Mamiña ', state_id: '2'}, \
				{ name: 'Mauque ', state_id: '2'}, \
				{ name: 'Mocha ', state_id: '2'}, \
				{ name: 'Moquella ', state_id: '2'}, \
				{ name: 'Pica ', state_id: '2'}, \
				{ name: 'Pintados  ', state_id: '2'}, \
				{ name: 'Pozo Almonte ', state_id: '2'}, \
				{ name: 'San Antonio de Zapiga ', state_id: '2'}, \
				{ name: 'San Lorenzo de Tarapacá ', state_id: '2'}, \
				{ name: 'Sibaya', state_id: '2'}, \
				{ name: 'Sotoca', state_id: '2'}, \
				{ name: 'Antofagasta ', state_id: '3'}, \
				{ name: 'Caleta Michilla ', state_id: '3'}, \
				{ name: 'Cobija ', state_id: '3'}, \
				{ name: 'Coloso ', state_id: '3'}, \
				{ name: 'Estación Baquedano ', state_id: '3'}, \
				{ name: 'Hornitos ', state_id: '3'}, \
				{ name: 'Mejillones ', state_id: '3'}, \
				{ name: 'Paposo ', state_id: '3'}, \
				{ name: 'Sierra Gorda ', state_id: '3'}, \
				{ name: 'Taltal ', state_id: '3'}, \
				{ name: 'Ayquina ', state_id: '3'}, \
				{ name: 'Caspana ', state_id: '3'}, \
				{ name: 'Catarpe ', state_id: '3'}, \
				{ name: 'Lasana ', state_id: '3'}, \
				{ name: 'Ollagüe ', state_id: '3'}, \
				{ name: 'San Francisco de Chiu Chiu ', state_id: '3'}, \
				{ name: 'San Pedro de Atacama ', state_id: '3'}, \
				{ name: 'Socaire ', state_id: '3'}, \
				{ name: 'Toconao ', state_id: '3'}, \
				{ name: 'María Elena ', state_id: '3'}, \
				{ name: 'Oficina salitrera Chacabuco ', state_id: '3'}, \
				{ name: 'Oficina salitrera Pedro de Valdivia ', state_id: '3'}, \
				{ name: 'Quillagua ', state_id: '3'}, \
				{ name: 'Oficina salitrera Rica Aventura ', state_id: '3'}, \
				{ name: 'Tocopilla ', state_id: '3'}, \

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
Product.create ([{product_type_id: '1', artist_id: '1', name: 'producto1', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '99000', sku: 'FEKPDBIL'}, \
				 {product_type_id: '2', artist_id: '2', name: 'producto2', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'KMLYVJPD'}, \
				 {product_type_id: '3', artist_id: '3', name: 'producto3', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'RBDPSQJH'}, \
				 {product_type_id: '4', artist_id: '1', name: 'producto4', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'QHNLJKCL'}, \
				 {product_type_id: '5', artist_id: '2', name: 'producto5', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'PSIEAHNC'}, \
				 {product_type_id: '6', artist_id: '3', name: 'producto6', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'NJDCBBIK'}, \
				 {product_type_id: '7', artist_id: '1', name: 'producto7', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'true', price: '9900', sku: 'EDJCORTI'}, \
				 {product_type_id: '8', artist_id: '2', name: 'producto8', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'false', price: '9900', sku: 'IQQREBNG'}, \
				 {product_type_id: '9', artist_id: '3', name: 'producto9', short_description: 'descripcion corta', description: 'descripcion larga', on_sale: 'false', price: '9900', sku: 'FNSDRTNC'} ])
