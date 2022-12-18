class Operation < ApplicationRecord
  belongs_to :agent
  belongs_to :good
  belongs_to :warehouse
  belongs_to :type_operation


  validates :quantity, :price, :numericality => { :greater_than_or_equal_to => 0 }
  validate :check_remains

  before_save :check_remains
  after_save  :add_remains

  private

  def check_remains
    @multiplier = TypeOperation.find(self.type_operation_id).title == "Поставка" ? 1 : -1
    if @multiplier > 0
      return true
    end
    @gwh = GoodsWh.where(:good_id => self.good_id, :warehouse_id => self.warehouse_id)
    if @gwh.count == 0 or @gwh.first.quantity < self.quantity
      errors.add(:date, 'there are no such goods in warehouse')
      return false
    end
    true
  end

  def add_remains
    @gwh = GoodsWh.where(:good_id => self.good_id, :warehouse_id => self.warehouse_id)
    if @gwh.count == 0
      @atr = {good_id: self.good_id, warehouse_id: self.warehouse_id, quantity: self.quantity}
      GoodsWh.create(@atr)
    else
      @multiplier = TypeOperation.find(self.type_operation_id).title == "Поставка" ? 1 : -1
      @new_q = self.quantity * @multiplier + @gwh.first.quantity
      if @new_q == 0
        GoodsWh.destroy(@gwh.first.id)
      elsif @new_q > 0
        GoodsWh.update(@gwh.first.id, quantity: @new_q)
      else
        errors.add(:date, 'there are no such goods in warehouse')
      end
    end
  end

end
