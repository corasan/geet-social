# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

damian = User.create([{ provider: 'github', name: 'Damian Lajara', username: 'damianlajara', email: "damian@gmail.com"}])
Repository.create([{owner: 'damianlajara', name: 'test-repo', full_name: 'damianlajara/test-repo', repo_url: 'https//github.com/damianlajara/test-repo'}])
