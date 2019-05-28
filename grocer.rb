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
  if coupons.length == 0
    return cart
  else

    coupons.each do |index|
      #index = coupon
      #item = cart item
      name = index[:item]
      item = cart[name]

      if(item != nil)
        #update curent item
        if(item[:count] >= index[:num])
          item[:count] = item[:count] - index[:num]
          #add coupon item
          couponkey = "#{name} W/COUPON"
          if(cart[couponkey] == nil)
            couponitem = {:price => index[:cost], :clearance => item[:clearance], :count => 1}
            cart[couponkey] = couponitem
          else
            couponitem = cart[couponkey];
            couponitem[:count] +=1;
          end
        end
      end
    end
   end
  cart
end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
