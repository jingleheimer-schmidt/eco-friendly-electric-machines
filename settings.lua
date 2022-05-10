
local eco_friendly_factor = {
  type = "string-setting",
  name = "eco-friendly-factor",
  setting_type = "startup",
  default_value = "0.00",
  allowed_values = {
    "0.00", "0.25", "0.50", "0.75", "1.00"
  }
}

data:extend({
  eco_friendly_factor
})
