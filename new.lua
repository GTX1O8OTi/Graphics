local Lighting = game:GetService("Lighting")


-- to store just a tiny amount of that the script will use :)
local variables = {
["Sky"] = true,
["Atmosphere"] = true,
["BloomEffect"] = true,
["BlurEffect"] = true,
["ColorCorrectionEffect"] = true,
["SunRaysEffect"] = true,

    ["configs"] = {
        ["SunRaysEffect"] = {
            ["Intensity"] = 0.1,
            ["Spread"] = 0.6
        },
    
        ["Atmosphere"] = {
            ["Density"] = 0.25
        },
    
        ["BloomEffect"] = {
            ["Intensity"] = 0.4,
            ["Threshold"] = 0.95,
            ["Size"] = 0.4
        },
    
        ["BlurEffect"] = {
            ["Size"] = 0.4
        },
    
        ["ColorCorrectionEffect"] = {
            ["Saturation"] = 0.2,
            ["Contrast"] = 0,
            ["Brightness"] = 555555
        }
    }
}
-- loops through game.Lighting to see if anything with
for _,object in pairs (Lighting:GetDescendants()) do
    for index, _ in pairs (variables) do
        if tostring(object.ClassName) == tostring(index) then
            object:Destroy()
        end
    end
end

for index, value in pairs (variables) do
    if index == "configs" then continue end
    local object = Instance.new(index)
    for i,v in pairs (variables.configs) do
    	for i2,v2 in pairs (v) do
    		--print(i.. " : " .. i2.. " : " .. v2)
    		if object.ClassName ~= tostring(i) then --[[print("not the same classname! (" .. i .. ") (" .. object.ClassName .. ")");]] continue end
    		object[i2] = v2
    		print(object.ClassName .. " - " .. i2 .. " - " .. v2)
    	end
    end
end
