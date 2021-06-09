# ROBLOX Graphics script

## They are configured for my personal taste, but you can change the configs if you want on the script.

### Usage example:

```lua
local folder_name = "city" -- can be 'city' or 'room'

getgenv().environment = false
getgenv().FutureLighting = false

local function load(folder)
return loadstring(game:HttpGet("https://raw.githubusercontent.com/GTX1O8OTi/Graphics/main/"..folder.."/script.lua"))()
end

load(folder_name)
```







# Portugues

## Sao configurados para meu gosto pesosoal, mas você pode mudar o script se quiser.

### Exemplo de uso:

```lua
local nome_da_pasta = "city" -- can be 'city' or 'room'

getgenv().environment = false
getgenv().FutureLighting = false

local function carregar(folder)
return loadstring(game:HttpGet("https://raw.githubusercontent.com/GTX1O8OTi/Graphics/main/"..folder.."/script.lua"))()
end

carregar(nome_da_pasta)
```
  
