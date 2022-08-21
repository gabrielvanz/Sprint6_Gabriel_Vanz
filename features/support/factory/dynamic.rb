require 'faker'

module Factory
    class Dynamic
        def self.user_for_registering
            {
                email: Faker::Internet.email,

            }
        end

        def self.address_name
            {
                address_name: Faker::Address.city,
            }
        end
    end
end