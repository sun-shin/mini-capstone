require "http"

response = HTTP.get("http://localhost:3000/api/all_products_path")
pp all_products = response.parse

require "http"

# response = HTTP.get("http://localhost:3000/api/camera_path")
# pp camera = response.parse
