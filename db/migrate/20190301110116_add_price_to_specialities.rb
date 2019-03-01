class AddPriceToSpecialities < ActiveRecord::Migration[5.2]
  def change
    add_monetize :specialities, :price, currency: { present: false }
  end
end
