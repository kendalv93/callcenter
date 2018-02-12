class Home < ActiveRecord::Base
  def sku=(val)
    write_attribute(:sku, val.delete(" "))
  end
end
