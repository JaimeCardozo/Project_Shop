require './item.rb'
require './menu.rb'
def main
    items = []
    puts "
          a - Add item
          r - Remove item
          v - View item
          M - Mark item
          E - Erased all
          C- Close"
    opt = gets.chomp
    opt = opt.upcase
    menu(opt,items)
end
main()
