items = ["casa",2]
puts items.size
items = items.push("lol")
print items
puts items.size
puts items[0].upcase
puts items.last
item_delete = items.delete_at(2)
print items
puts
print item_delete
puts
puts nil == items[3] 