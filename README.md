# ROBLOX Graphics script

## They are configured for my personal taste, but you can change the configs if you want on the script.

### Usage example:

```lua
local folder_name = "city" -- can be 'city' or 'room'

local function load(folder)
return loadstring(game:HttpGet("https://raw.githubusercontent.com/GTX1O8OTi/Graphics/main/"..folder.."/script.lua"))()
end

load(folder_name)
```
