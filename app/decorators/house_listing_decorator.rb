class HouseListingDecorator < Draper::Decorator
 delegate_all
 decorates_finders

  def price_format(price)
    house_listing.price.number_to_currency
  end

end
