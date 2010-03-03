# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Operacion.create(:op_nombre => "Alquiler")
Operacion.create(:op_nombre => "Venta")
Tipo.create(:nombre => "Apiladores")
Tipo.create(:nombre => "Maquinas Viales")
