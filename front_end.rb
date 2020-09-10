require "http"

response = HTTP.get("http://localhost:3000/api/camera_path")
p camera = response.parse

