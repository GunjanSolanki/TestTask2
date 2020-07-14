TEST-TASK : 

You are tasked with building a modern web application using the Ruby on Rails framework.  The web application should support the below user story:

As a user, I should be able to create a Product with one or more Variations.  I should be able to attribute a price and quantity for each Variation.  

Create a user-interface that will allow a user to create a Product, add Variations to that Product and save it.  

Context & Definitions:
A Product is any physical product like a T-shirt, socks, Jacket, etc.  A product has a minimum of title, description, and SKU.
A Variation belongs to a Product.  It has SKU, a price and quantity.  A Product can have one or more variations.  For example, a T-Shirt can come in multiple colors and/or sizes.  Each such combination is a Variation.  Let’s break this down further continuing with our T-shirt example. Our shirt could come in the following variations:
Color: Blue ; Size: Medium
Color: Red ; Size: Large
Color: Blue ; Size: Small

Here Color and Size are Options.  Color has two OptionValues: Blue and Red.  Size has three OptionValues: Small, Medium and Large.  

A Variation can have a maximum of 4 Option.  Each Option can have one or more OptionValue.

Let’s look at another example: Glass.  For Glass the user might define different variations like:

Pattern: Striped ; Shape: Oval
Pattern: Solid ; Shape: Round
etc.
