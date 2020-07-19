require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :new_item
    
    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
  
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        @new_item = price * quantity
        quantity.times do
          @items << title
        end
      end

    def apply_discount
        if discount != nil
            x = (100-discount).to_f
            @total = x/100 * @total
            "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= @new_item
    end

end


#     def add_item(title, price, quantity=nil)
#         @items << title
#         # @transaction = quantity * price
#         temp = Array.new(quantity-1, title) if quantity != nil
#         @items.concat(temp) if quantity != nil
#         @total = @total + price if quantity == nil
#         @total = @total + price * quantity if quantity != nil
#         @count = quantity
#         @price = price
#     end
