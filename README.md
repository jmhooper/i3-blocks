![Screenshot of my i3bar](https://raw.githubusercontent.com/jmhooper/i3-blocks/master/screenshot.png)

This project contains the Ruby scripts I use with i3blocks as well as the configuration for my status line which uses them.

It is assumed that you have the following installed:

- i3blocks
- ruby
- acpi
- wicd-cli and wicd-client
- pactl
- pavucontrol

# Installation

Simply clone this repo to `~/.i3/blocks`:

```
git clone https://github.com/jmhooper/i3-blocks.git ~/.i3/blocks
```

Then update your i3 configuration to call out to i3 bar with the config file:

```
bar {
  status_command "i3blocks -c /home/jonathan/.i3/blocks/config"
  
  # ...
}
```

# The Blocks

This is what the blocks do:

## weather

This block displays the weather for Baton Rouge, LA. Change the `LOCATION` in variable in `weather.rb` to get the weather for a different location.

## battery

This block displays the status of the battery as well as how much battery is remaing.

## network

This block displays the IP address of the wired network connection.
When clicked, this block opens your wicd client.

My machine that uses i3 does not have a wireless antenna so I've never gotten around to setting this up to show the status of the wireless network.
Presumably that will come once I setup i3 on a machine than can connect to a wireless network.

## volume

This block displays the current volume.
When clicked it opens pavucontrol.

## time

This block displays the current time.

## gr8day

This block reminds you to have a great day!
