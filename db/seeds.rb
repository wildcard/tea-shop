# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

json = ActiveSupport::JSON.decode(File.read('db/seeds/steepster_teas_1.json'))

json.each do |tea|
  Tea.create(
    name: tea['teaname_link/_text'],
    description: tea['entrycount_link/_text'] + 'link: ' + tea['entrycount_link/_text'],
    price: tea['entrycount_link_numbers/_source'], # simulate price
    image: tea['tea_image'],
    link: tea['teaname_link']
    )
end
