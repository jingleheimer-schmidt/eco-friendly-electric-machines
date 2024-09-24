
local eco_friendly_factor = {
    type = "string-setting",
    name = "eco-friendly-factor",
    setting_type = "startup",
    default_value = "0.00",
    allowed_values = {
        "0.00", "0.25", "0.50", "0.75", "1.00"
    },
    order = "a"
}

local eco_friendly_cheicals = {
    type = "bool-setting",
    name = "eco-friendly-cheicals",
    setting_type = "startup",
    default_value = true,
    order = "b"
}
local eco_friendly_furnaces = {
    type = "bool-setting",
    name = "eco-friendly-furnaces",
    setting_type = "startup",
    default_value = true,
    order = "b"
}
local eco_friendly_drills = {
    type = "bool-setting",
    name = "eco-friendly-drills",
    setting_type = "startup",
    default_value = true,
    order = "b"
}
local eco_friendly_assembling_machines = {
    type = "bool-setting",
    name = "eco-friendly-assembling-machines",
    setting_type = "startup",
    default_value = true,
    order = "b"
}

data:extend({
    eco_friendly_factor,
    eco_friendly_cheicals,
    eco_friendly_furnaces,
    eco_friendly_drills,
    eco_friendly_assembling_machines
})
