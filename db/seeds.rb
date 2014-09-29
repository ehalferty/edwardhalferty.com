# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all

content = <<EOF
<h1>Test post!!!</h1>
<p>hi there!! <a href="http://www.google.com">link</a></p>
EOF

(1..100).each do |i|
  ["published", "draft"].each do |s|
    Post.create title: s.capitalize + " Post #" + i.to_s.rjust(2, "0"),
                status: s,
                content: content,
                created_at: rand(3.years.ago..Time.now)
  end
end

