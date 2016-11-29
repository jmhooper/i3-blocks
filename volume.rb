if ENV["BLOCK_BUTTON"].to_i == 1
  `pavucontrol`
end

pactl_output = `pactl list sinks | grep "^\t*Volume: "`
pactl_output = pactl_output.gsub(/^\tVolume: /, "").split(" ")

puts "V: #{pactl_output[3]}"
puts "V: #{pactl_output[3]}"
