local planet_chains = {
  vulcanus = {
    "calcite-processing", "tungsten-carbide", "foundry", "big-mining-drill", "tungsten-steel", "metallurgic-science-pack",
    "sulfur-processing", "advanced-material-processing", "automation-2", "concrete", "advanced-oil-processing", "lubricant", "electric-engine", "plastics", "advanced-circuit"
  },
  gleba = {
    "agriculture", "yumako", "jellynut", "biochamber", "artificial-soil", "bioflux", "bacteria-cultivation", "bioflux-processing", "agricultural-science-pack", "heating-tower",
    "landfill", "advanced-material-processing", "automation-2", "concrete"
  },
  fulgora = {
    "holmium-processing", "electromagnetic-plant", "electromagnetic-science-pack",
    "production-science-pack", "advanced-electronics-2", "advanced-material-processing", "automation-2", "concrete", "recycling",
    "sulfur-processing", "battery", "electric-energy-accumulators", "advanced-oil-processing", "plastics", "advanced-circuit"
  },
  aquilo = {
    "lithium-processing", "cryogenic-plant", "cryogenic-science-pack"
  }
}

local planet_includes = {
  aquilo = {"vulcanus", "gleba", "fulgora"}
}

script.on_init(
  function()
    local technologies = game.forces["player"].technologies

    local function research(names)
      for _, name in pairs(names) do
        if technologies[name] then
          technologies[name].researched = true
        end
      end
    end

    if (settings.startup["ctt-vanilla-research-before-space-age"].value) then
      research({"steam-power", "automation-science-pack", "electronics", "electric-mining-drill", "repair-pack", "radar"})
    end

    for planet, chain in pairs(planet_chains) do
      local setting = settings.startup["ctt-pre-research-" .. planet]
      if setting and setting.value then
        research(chain)
        for _, included in pairs(planet_includes[planet] or {}) do
          research(planet_chains[included])
        end
      end
    end
  end
)
