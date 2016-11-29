#!/bin/ruby

acpi_output = `acpi -i`.split("\n")[0].gsub(",", "").split(" ")

status = acpi_output[2]
percentage = acpi_output[3].to_i

color = "#ffffff"
if percentage == 100
  color="#72d117"
elsif percentage < 10
  color="#d11717"
end

puts "#{status} #{percentage}%"
puts "#{percentage}%"
puts color
