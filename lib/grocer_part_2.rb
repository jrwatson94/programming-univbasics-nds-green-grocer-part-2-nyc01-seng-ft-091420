require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |index|
   cart_item = find_item_by_name_in_collection(index[:item],cart)
   couponed_item_name = "#{index[:item]} W/ COUPON"
   cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name,cart)
   
    if cart_item && cart_item[:count] >= index[:num]
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += index[:num]
        cart_item[:count] -= index[:num]
      else
        cart_item_with_coupon = {
          :item => couponed_item_name,
          :price => index[:cost] / index[:num],
          :count => index[:num]
        }
     end
    end
  end
end
    


 
def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
