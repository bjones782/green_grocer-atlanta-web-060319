def consolidate_cart(cart)
  # code here
   final = {}
  cart.each do |item_index|
    item_index.each do |item, info|
      if final[item]
        final[item][:count] += 1
      else
        final[item] = info
        final[item][:count] = 1
      end
    end
  end
  return final
end


def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
