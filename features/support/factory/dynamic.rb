require 'faker'

module Factory
    class Dynamic
        def self.user_for_registering
            {
                email: Faker::Internet.email,
            }
        end
    end
end