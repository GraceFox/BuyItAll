module CartHelper

  def nice_product_price(price)
    number_to_currency(price, :unit => "NZD $", :seperator => ",", :delimiter => ".")
  end
end
