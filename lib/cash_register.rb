class CashRegister
   attr_accessor :total, :discount, :items, :last_item_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = 0
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times {self.items << title}
        @last_item_price = price * quantity
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            self.total -= (self.total * discount) / 100
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= @last_item_price
    end

    
end