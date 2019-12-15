require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  

  #You can directly iterate over the hash that is the value of the "Freddy Mercury" key by 
  #calling an enumerator method in contacts["Freddy Mercury"].

#You can set a conditional to iterate through the hash for Freddy Mercury only and when you reach 
#the appropriate level, check to see if the key == ("is equal to") :favorite_ice_cream_flavors. 
#If it does, check to see if that array contains "strawberry". If it does, then delete it from the Array.


def remove_strawberry(contacts)
  contacts.each do |name, contact_info_hash|
    if name == "Freddy Mercury"
      contact_info_hash.each do |attribute, data|
          if attribute == :favorite_ice_cream_flavors
            data.delete_if do |ice_cream|
              ice_cream == "strawberry"
              # binding.pry
            end
          end
      end
    end 
  end

end




























# def remove_strawberry(contacts)
#   contacts.each do |k, v|
#     contacts["Freddy Mercury"][:favorite_ice_cream_flavors].delete("strawberry")
#     contacts
#   end
# end
