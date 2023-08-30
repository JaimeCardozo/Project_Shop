puts "Welcome!"
def add_item(items)
    puts "Digit item_name: "
    item_name = gets.chomp
    item = Item.new(item_name, items.size)
    items = items.push(item)
    return items
end
def view_items(items)
    items.each do |item|
        puts item
    end
end
def menu(opt,items)
    loop do
        case opt
        when "A"
            "Add item"
            items = add_item(items)
            item = items.last 
            puts "Your items is #{item}"
            puts 
            view_items(items)
        when "R"
            "Remove item"
        when "V"
            "view item"
            view_items()
    
        when "M"
            "Mark item"
        when "E"
            "Erased all"
        when "C"
            "Close"
            puts "Thanks for using me"
            Exit
        else
            "Option invalid"
        end
    end
    
end