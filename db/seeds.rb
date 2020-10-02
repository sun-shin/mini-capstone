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


# CartedProduct.create!([
#   # {user_id: 1, product_id: 1, quantity: 2, status: "carted", order_id: ""},
#   {user_id: 1, product_id: 7, quantity: 1, status: "carted" },
#   {user_id: 2, product_id: 4, quantity: 1, status: "carted" },
# ])

Image.create([
  {url: "https://images-na.ssl-images-amazon.com/images/I/51VXgNZFIoL._AC_SY355_.jpg", product_id: 7},
  {url: "https://www.popsci.com/resizer/6iA2dK-qrizE_TrGloIM5mYz5Mw=/760x570/filters:focal(600x450:601x451)/arc-anglerfish-arc2-prod-bonnier.s3.amazonaws.com/public/VYHDQWEYQJMUBJTKNV4MMC5KMU.jpg", product_id: 4},
  {url: "https://cdn.shopify.com/s/files/1/0027/1089/6705/products/Havest_CedarPencil_2804x.jpg?v=1576593250", product_id: 8},
  {url: "https://m.media-amazon.com/images/I/81O460uj3BL._AC_SS350_.jpg", product_id: 9},
])