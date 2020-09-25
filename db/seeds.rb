# Category.create!([
#   {name: "New"},
#   {name: "Cheap"},
#   {name: "Damage"},
# ])

# ProductCategory.create!([
#   # {category_id: 1, product_id: 1},
#   # {category_id: 2, product_id: 2},
#   # {category_id: 1, product_id: 3},
#   # {category_id: 1, product_id: 4},
#   # {category_id: 3, product_id: 7},
#   # {category_id: 2, product_id: 8},
#   # {category_id: 2, product_id: 9},
#   {category_id: 1, product_id: 2},
#   {category_id: 3, product_id: 9}
# ])


CartedProduct.create!([
  # {user_id: 1, product_id: 1, quantity: 2, status: "carted", order_id: ""},
  {user_id: 1, product_id: 7, quantity: 1, status: "carted" },
  {user_id: 2, product_id: 4, quantity: 1, status: "carted" },
])