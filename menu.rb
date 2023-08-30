puts "Welcome!"
def add_item(items)
    puts "Digit item_name: "
    item_name = gets.chomp
    item = Item.new(item_name, items.size + 1)
    items = items.push(item)
    return items
end
def view_items(items)
    if items == []
        puts "The are no items"
    else
        items.each do |item|
            puts item
        end
    end
    
end
def remove_item(items)
    puts "Digit the item position that wish mark"
    item_position = gets.chomp.to_i-1
    if items[item_position]!= nil
        puts "Entre"
        item_delete = items.delete_at(item_position)
        puts "The item #{item_delete} was erased"
        count = 0
        items.each do |item|
            item.position = count + 1
            items[count]= item
            count += 1       
        end
    else
        puts "Error: Invalid position"
    end 
    return items
end
def mark_item(items)
    puts "Digit position of item"
    item_position = gets.chomp.to_i - 1 
    if items[item_position] != nil
        item= items[item_position]
        item.mark = ["x"]
        items[item_position] = item
    else
        puts "This position is invalid"
    end
    return items
end
def menu(items)
    loop do
        puts "
          a - Add item
          r - Remove item
          v - View item
          M - Mark item
          E - Erased all
          C- Close"
    opt = gets.chomp
    opt = opt.upcase
        case opt
        when "A"
            "Add item"
            items = add_item(items)
            view_items(items)
        when "R"
            "Remove item"
            remove_item(items)
            view_items
        when "V"
            "view item"
            view_items(items)
        when "M"
            "Mark item"
            items = mark_item(items)
            view_items()
        when "E"
            "Erased all"
            
        when "C"
            "Close"
            puts "Thanks for using me"
            break
        else
            puts "Option invalid"
        end
    end
    
end