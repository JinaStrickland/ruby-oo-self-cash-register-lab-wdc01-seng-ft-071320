require 'pry'

class CashRegister
    attr_accessor :total,  :discount, :items, :count
    
    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @count = 0
    end

    def add_item(title, price, quantity=0)
        items << title
        @total = @total + price
        if quantity > 0
            @count = @count + quantity
        end

    end


end


