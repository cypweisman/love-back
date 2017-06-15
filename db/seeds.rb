require 'faker'

Profile.destroy_all

Profile.create(name: 'Cy', age: 29)

Profile.create(name: 'Dave', age: 30)