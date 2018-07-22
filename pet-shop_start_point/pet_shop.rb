def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  #@pet_shop.each{|account| total+=account[:admin][:total_cash] }
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold_number)
  pet_shop[:admin][:pets_sold]+= sold_number
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed_type)
  breed_array=[]
  for pet in pet_shop[:pets]
    if  pet[:breed]== breed_type
        breed_array << breed_type
    end
  end
  return breed_array
end

def pets_by_breed_not_included(pet_shop, breed_type)
  not_existed_breed_array=[]
  for pet in pet_shop[:pets]
    if  pet[:breed]!= breed_type
        not_existed_breed_array << breed_type
    end
  end
  return not_existed_breed_array
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete_if {|pet| pet[:name]== name}
  end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets] << new_pet
end

def customer_cash(custumer)
  return custumer[:cash]
end

def remove_customer_cash(custumer, amount)
  custumer[:cash] -= amount
end

def customer_pet_count(custumer)
  custumer[:pets].count()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  return new_pet[:price] < customer[:cash]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet.nil?
    return
  end
  if pet[:price] > customer[:cash]
    return
  end
  # customer[:pets] << pet[:name]
   add_pet_to_customer(customer, pet[:name])
  # pet_shop[:admin][:pets_sold]+= 1
   increase_pets_sold(pet_shop, 1)
  # customer[:cash] -= pet[:price]
   remove_customer_cash(customer, pet[:price])
  # pet_shop[:admin][:total_cash] += pet[:price]
   add_or_remove_cash(pet_shop, pet[:price])
end
