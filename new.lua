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
        ["Saturation"] = 0.1,
        ["Contrast"] = 0,
        ["Brightness"] = 0
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
    
    -- creates a new object that can be anything, for example Sky
    local object = Instance.new(index)
    
    -- loops through variables.configs
    for i,v in pairs (variables.configs) do
    
    	-- a loop inside of variables.config
    	for i2,v2 in pairs (v) do
    	
    		--print(i.. " : " .. i2.. " : " .. v2)
    		
    		-- if the object isn't the classname of what we are going to change, skip it
    		if object.ClassName ~= tostring(i) then --[[print("not the same classname! (" .. i .. ") (" .. object.ClassName .. ")");]] continue end
    		object[i2] = v2
    	end
    end
end
