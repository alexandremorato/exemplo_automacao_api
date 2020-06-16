module Helpers
    def create_mass_data()
        data = Hash.new
        data['Nome'] = Faker::Name.first_name
        data['Salário'] = Faker::Number.number(digits: 5)
        data['Idade'] = Faker::Number.number(digits: 2)
        data
    end
end    