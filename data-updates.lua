
local multiplier = tonumber(settings.startup["eco-friendly-factor"].value)

local settings = {
    ["oil-processing"] = not settings.startup["eco-friendly-cheicals"].value,
    ["chemistry"] = not settings.startup["eco-friendly-cheicals"].value,
    ["smelting"] = not settings.startup["eco-friendly-furnaces"].value,
    ["crafting-with-fluid"] = not settings.startup["eco-friendly-assembling-machines"].value,
    ["crafting"] = not settings.startup["eco-friendly-assembling-machines"].value,
    ["basic-crafting"] = not settings.startup["eco-friendly-assembling-machines"].value,
    ["advanced-crafting"] = not settings.startup["eco-friendly-assembling-machines"].value,
    ["mining-drill"] = not settings.startup["eco-friendly-drills"].value,
}

local function is_blacklisted(prototype)
    local output = false
    if prototype.crafting_categories then
        for _, category in pairs(prototype.crafting_categories) do
            if settings[category] == true then
                output = true
            end
        end
    end
    if settings[prototype.type] then
        output = true
    end
    return output
end

for each, type in pairs(data.raw) do
    for every, prototype in pairs(type) do
        if prototype.energy_source and prototype.energy_source.type == "electric" then
            if prototype.energy_source.emissions_per_minute then
                local pollution = prototype.energy_source.emissions_per_minute["pollution"]
                if pollution and pollution > 0 then
                    if not is_blacklisted(prototype) then
                        prototype.energy_source.emissions_per_minute["pollution"] = pollution * multiplier
                    end
                end
            end
        end
    end
end
