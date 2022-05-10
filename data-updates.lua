
local multiplier = tonumber(settings.startup["eco-friendly-factor"].value)

for each, type in pairs(data.raw) do
  for every, prototype in pairs(type) do
    if prototype.energy_source and prototype.energy_source.type == "electric" then
      if prototype.energy_source.emissions_per_minute then
        local emissions_per_minute = tonumber(prototype.energy_source.emissions_per_minute)
        if emissions_per_minute and emissions_per_minute > 0 then
          prototype.energy_source.emissions_per_minute = emissions_per_minute * multiplier
        end
      end
    end
  end
end
