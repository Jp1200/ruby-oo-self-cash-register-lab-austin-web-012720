require "pry"
class CashRegister

  attr_accessor :total, :discount, :title, :item_price

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @title = []
    @item_price =[]


  end



  def add_item(title, price, quantity = 1)
    self.item_price << price*quantity
    self.total += price*quantity
    quantity.times do
      self.title << title
    end
  end

  def apply_discount
    #binding.pry
    if self.discount.nil?
    return "There is no discount to apply."


    else
    self.total -= ((discount/100.0))*total
    return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    return self.title
  end

  def void_last_transaction
    self.total -= self.item_price[-1]
    return self.total
  end

end
