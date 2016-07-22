# Mandatory

def pet_shop_name(pet_shop)
  name_of_pet_shop = pet_shop[:name]
  return name_of_pet_shop
end

def total_cash(pet_shop)
  cash = pet_shop[:admin][:total_cash]
  return cash
end

def add_or_remove_cash(pet_shop, changing_cash)
  updated_cash = total_cash( pet_shop ) + changing_cash
  pet_shop[:admin][:total_cash] = updated_cash
end

def pets_sold(pet_shop)
  num_pets_sold = pet_shop[:admin][:pets_sold]
  return num_pets_sold
end

def increase_pets_sold(pet_shop, num_sold_pets)
  updated_num_pets_sold = pets_sold(pet_shop) + num_sold_pets
  pet_shop[:admin][:pets_sold] = updated_num_pets_sold
end

def stock_count(pet_shop)
  num_pets = pet_shop[:pets].length
  return num_pets
end

def pets_by_breed(pet_shop, given_breed)
  pets = pet_shop[:pets]
  pets_of_breed = []
  for pet in pets
    pet_breed = pet[:breed]
    if pet_breed == given_breed
      pets_of_breed.push(pet)
    else
      next
    end
  end
  return pets_of_breed
end

def find_pet_by_name(pet_shop, given_name)
  pets = pet_shop[:pets]
  for pet in pets
    pet_name = pet[:name]
    if pet_name == given_name
      return pet
    else
      next
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, given_name)
  pets = pet_shop[:pets]
  pet_to_remove = find_pet_by_name(pet_shop, given_name)
  pets.delete(pet_to_remove)
end

def add_pet_to_stock(pet_shop, new_pet)
  pets = pet_shop[:pets]
  pets.push(new_pet)
end

def customer_pet_count(customer)
  customer_pets = customer[:pets]
  customer_nmmber_pets = customer_pets.count
  return customer_nmmber_pets
end

def add_pet_to_customer(customer, new_pet)
  customer_pets = customer[:pets]
  customer_pets.push(new_pet)
end

# OPTIONAL

def customer_can_afford_pet(customer, new_pet)
  customer_cash = customer[:cash]
  pet_price = new_pet[:price]
  return customer_cash >= pet_price
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil
    if customer_can_afford_pet(customer, pet) != false
      customer_pets = customer[:pets]
      customer_pets.push(pet)
      pet_shop[:admin][:pets_sold] += 1
      pet_shop[:admin][:total_cash] += pet[:price]
    else
      return "Customer cannot afford pet"
    end
  else
    return "No pet found"
  end

end