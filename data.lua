if (settings.startup["ctt-vanilla-research-before-space-age"].value) then
  local steel_axe = table.deepcopy(data.raw["technology"]["steel-axe"])
  steel_axe.research_trigger = nil
  steel_axe.unit = {
    count = 50,
    ingredients = {{"automation-science-pack", 1}},
    time = 30
  }

  local oil_processing = table.deepcopy(data.raw["technology"]["oil-processing"])
  oil_processing.research_trigger = nil
  oil_processing.unit = {
    count = 100,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    time = 30
  }

  local uranium_processing = table.deepcopy(data.raw["technology"]["uranium-processing"])
  uranium_processing.research_trigger = nil
  uranium_processing.unit = {
    count = 200,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
    time = 30
  }

  data:extend({steel_axe, oil_processing, uranium_processing})
end
