 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Parent.create(nombre: 'Juan', apellido: 'Vargas',telefono: '57674537',rut:'7.879.867-k',pago:'21000')
Parent.create(nombre: 'Pedro', apellido: 'Espinoza',telefono:'97214571',rut:'22.372.241-5',pago:'15000')
Parent.create(nombre: 'Alexis', apellido: 'Vifal',telefono: '41234539',rut:'16.308.344-2',pago:'18000')
Pay.create(mes: 'Marzo', parent_id: '1', monto: '15000',created_at:'2016-08-27 01:43:25 UTC ')
