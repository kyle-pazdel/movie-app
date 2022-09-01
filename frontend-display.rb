require "http"

puts HTTP.get("http://localhost:3000/movies")
puts
puts HTTP.get("http://localhost:3000/movies/1")
puts
puts HTTP.get("http://localhost:3000/actors/16")
puts
puts HTTP.get("http://localhost:3000/actors")
