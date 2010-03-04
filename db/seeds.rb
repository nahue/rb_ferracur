# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
alquiler = Operacion.create(:op_nombre => "Alquiler")
venta = Operacion.create(:op_nombre => "Venta")
apiladores = Tipo.create(:ti_nombre => "Apiladores")
maquinas_viales = Tipo.create(:ti_nombre => "Maquinas Viales")
apiladores_electricos = Categoria.create(:cat_nombre => "Apiladores Electricos")


# Relaciones

apiladores.categorias << apiladores_electricos