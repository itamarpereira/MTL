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
contabilidade_photo = "https://images.unsplash.com/photo-1580894906475-403276d3942d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
file = URI.open(contabilidade_photo)
filename = File.basename(URI.parse(contabilidade_photo).path)
contabilidade = Area.new(name: "Contabilidade", description: 'Criar descrição...')
contabilidade.photo.attach(io: file, filename: filename)
contabilidade.save

estrutura_photo = "https://images.unsplash.com/photo-1580894906475-403276d3942d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
file = URI.open(estrutura_photo)
filename = File.basename(URI.parse(estrutura_photo).path)
estrutura = Area.new(name: "Reforma e Recuperação Estrutural", description: 'Criar descrição...')
estrutura.photo.attach(io: file, filename: filename)
estrutura.save


projeto_photo = "https://images.unsplash.com/photo-1580894906475-403276d3942d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
file = URI.open(projeto_photo)
filename = File.basename(URI.parse(projeto_photo).path)
projeto = Area.new(name: "Projetos Arquitetônicos e Estruturais", description: 'Criar descrição...')
projeto.photo.attach(io: file, filename: filename)
projeto.save

solar_photo = "https://images.unsplash.com/photo-1580894906475-403276d3942d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
file = URI.open(solar_photo)
filename = File.basename(URI.parse(solar_photo).path)
solar = Area.new(name: "Energia Solar", description: 'Criar descrição...')
solar.photo.attach(io: file, filename: filename)
solar.save

puts"seeds created! Done!"
