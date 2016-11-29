#!/bin/ruby

if ENV["BLOCK_BUTTON"].to_i == 1
  `wicd-client --no-tray`
end

IP_ADDRESS_REGEX = /IP: (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})/

def parse_wicd_output(output)
  result_hash = Hash.new
  output.split("\n").each do |line|
    values = line.split(": ")

    if IP_ADDRESS_REGEX.match(line)
      result_hash["IP"] = IP_ADDRESS_REGEX.match(line, 0)[1]
    elsif (values.length == 2)
      result_hash[values.first] = values.last
    end
  end
  result_hash
end

wicd_output = `wicd-cli --wired -m wired-default -i`
parsed_output = parse_wicd_output(wicd_output)

if parsed_output["Connection status"] == "Connected"
  puts parsed_output["IP"]
  puts ""
  puts "#72d117"
else
  puts "Not connected"
  puts ""
  puts "#d11717"
end
