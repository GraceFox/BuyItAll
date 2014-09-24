class Product < ActiveRecord::Base
  belongs_to :user

  def remove_from_cart!
    update_attributes!(user_id: nil)
  end

end
