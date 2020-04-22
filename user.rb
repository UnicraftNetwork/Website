puts("Premium?")
premium = "\"#{gets.chomp}\""

puts("uuid")
uuid = "\"#{gets.chomp}\""

puts("nick")
nick = "\"#{gets.chomp}\""

puts("rank_id > admin | dev | srmod | mod | jrmod | builder <")
rank_id ="\"#{gets.chomp}\""

puts("rank_name")
rank_name = "\"#{gets.chomp}\""

puts("rank_colour (#HEX)")
colour = "\"#{gets.chomp}\""

puts("role")
role = "\"#{gets.chomp}\""

print("Staff.create :premium => #{premium}, :uuid => #{uuid}, :nick => #{nick}, :rank_id => #{rank_id}, :rank_name => #{rank_name}, :rank_colour => #{colour}, :role => #{role}")									
