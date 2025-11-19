if (settings.startup["ctt-vanilla-research-before-space-age"].value) then
  local steel_axe = table.deepcopy(data.raw["technology"]["steel-axe"])
  steel_axe.research_trigger = nil
  steel_axe.unit = {
    count = 50,
    ingredients = {{"automation-science-pack", 1}},
    time = 30
  }

  local oil_gathering = table.deepcopy(data.raw["technology"]["oil-gathering"])
  local oil_processing = table.deepcopy(data.raw["technology"]["oil-processing"])
  oil_processing.research_trigger = nil
  oil_processing.unit = {
    count = 100,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    time = 30
  }
  if (settings.startup["ctt-vanilla-research-replace"].value) then
    oil_gathering.enabled = false

    oil_processing.icon = oil_gathering.icon
    oil_processing.icons = oil_gathering.icons
    oil_processing.effects = {
      {
        type = "unlock-recipe",
        recipe = "pumpjack"
      },
      {
        type = "unlock-recipe",
        recipe = "oil-refinery"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "basic-oil-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-petroleum-gas"
      }
    }
    oil_processing.prerequisites = {
      "fluid-handling"
    }
  end

  -- TODO: Remove unecessary technology after this one.
  local uranium_mining = table.deepcopy(data.raw["technology"]["uranium-mining"])
  local uranium_processing = table.deepcopy(data.raw["technology"]["uranium-processing"])
  uranium_processing.research_trigger = nil
  uranium_processing.unit = {
    count = 200,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
    time = 30
  }
  if (settings.startup["ctt-vanilla-research-replace"].value) then
    uranium_mining.enabled = false

    uranium_processing.effects = {
      {
        modifier = true,
        type = "mining-with-fluid"
      },
      {
        type = "unlock-recipe",
        recipe = "centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-processing"
      }
    }
    uranium_processing.prerequisites = {
      "chemical-science-pack", "concrete"
    }
  end

  data:extend({steel_axe, oil_processing, uranium_processing})

  if (settings.startup["ctt-vanilla-research-replace"].value) then
    data:extend({oil_gathering, uranium_mining})
  end
end
