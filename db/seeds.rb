# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# id 1
u1 = User.create(name: 'Admin', 
                email: 'admin@sellarchamp.com', 
                contact: '7748020946', 
                age: 20, 
                role: 'admin', 
                password: '123123'
                )

ptype1 = ProductType.create(name: "Clothes") 
ptype2 = ProductType.create(name: "Glass")
ptype3 = ProductType.create(name: "Electronic")

p1 = ptype1.products.create(title: 'Shirt', description: 'Brand: Lewis Returnable & Replacable within 15 days.', user_id: 1, sku: 'shirt101')
p2 = ptype2.products.create(title: 'Mobile Cover Glass', description: 'Gorrilla Glass', user_id: 1, sku: 'glass101')

option1 = Option.create(option_type: 'Color', option_value: ['Blue', 'Red', 'White'])
option2 = Option.create(option_type: 'Size', option_value: ['Small', 'Medium', 'Large'])
option3 = Option.create(option_type: 'Pattern', option_value: ['Stripped', 'Solid'])
option4 = Option.create(option_type: 'Shape', option_value: ['Circle', 'Oval', 'Rectangle', 'Square'])

variant1 = p1.variants.create(sku: 'shirtv101', price: 250, quantity: 1)
variant2 = p2.variants.create(sku: 'glassv101', price: 500, quantity: 1)

VariantOption.create(variant_id: 1,option_id: 1)
VariantOption.create(variant_id: 1,option_id: 2)
VariantOption.create(variant_id: 1,option_id: 3)

VariantOption.create(variant_id: 2,option_id: 4)

ProductOption.create(product_type_id: 1, supported_option_type: 'Color')
ProductOption.create(product_type_id: 1, supported_option_type: 'Size')
ProductOption.create(product_type_id: 1, supported_option_type: 'Pattern')

ProductOption.create(product_type_id: 2, supported_option_type: 'Shape')
