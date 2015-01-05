# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fire = Type.create(name: 'Fire')
medical = Type.create(name: 'Medical')
crime = Type.create(name: 'Crime')

idle = ResponderStatus.create(name: 'Idle')
busy = ResponderStatus.create(name: 'Busy')


Responder.create(name: 'Ambulance 1', status_id: idle.id)
Responder.create(name: 'Ambulance 2', status_id: idle.id)
Responder.create(name: 'Ambulance 3', status_id: idle.id)
Responder.create(name: 'Firetruck 1', status_id: idle.id)
Responder.create(name: 'Firetruck 2', status_id: idle.id)
Responder.create(name: 'Firetruck 3', status_id: idle.id)
Responder.create(name: 'Police 1', status_id: idle.id)
Responder.create(name: 'Police 2', status_id: idle.id)
Responder.create(name: 'Police 3', status_id: idle.id)

Priority.create(name: 'low', rank: 1)
Priority.create(name: 'medium', rank: 2)
Priority.create(name: 'high', rank: 3)