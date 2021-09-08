# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0


puts"destroying the seeds..."
Area.destroy_all
puts"seeds destroyed. Creating new seeds..."

#PROJECTS
contabilidade_photo = "https://res.cloudinary.com/dn2gpbtwl/image/upload/v1631134557/photo-1454165804606-c3d57bc86b40_cjdvfu.jpg"
file = URI.open(contabilidade_photo)
filename = File.basename(URI.parse(contabilidade_photo).path)
contabilidade = Area.new(name: "Contabilidade", description: 'Criar descrição...')
contabilidade.photo.attach(io: file, filename: filename)
contabilidade.save

estrutura_photo = "https://res.cloudinary.com/dn2gpbtwl/image/upload/v1631134242/photo-1581094376368-ae9f64e15985_eaofla.jpg"
file = URI.open(estrutura_photo)
filename = File.basename(URI.parse(estrutura_photo).path)
estrutura = Area.new(name: "Reforma e Recuperação Estrutural", description: 'Criar descrição...')
estrutura.photo.attach(io: file, filename: filename)
estrutura.save


projeto_photo = "https://res.cloudinary.com/dn2gpbtwl/image/upload/v1631134079/photo-1581093196867-ca3dba3c721b_uv7f8j.jpg"
file = URI.open(projeto_photo)
filename = File.basename(URI.parse(projeto_photo).path)
projeto = Area.new(name: "Projetos Arquitetônicos e Estruturais", description: 'Criar descrição...')
projeto.photo.attach(io: file, filename: filename)
projeto.save

solar_photo = "https://res.cloudinary.com/dn2gpbtwl/image/upload/v1631133907/photo-1584276433295-4b49a252e5ee_ivy3xl.jpg"
file = URI.open(solar_photo)
filename = File.basename(URI.parse(solar_photo).path)
solar = Area.new(name: "Energia Solar", description: 'Criar descrição...')
solar.photo.attach(io: file, filename: filename)
solar.save

puts"seeds created! Done!"
