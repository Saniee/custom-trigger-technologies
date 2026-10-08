local chains = require("chains")

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

    local function research_planet(planet)
      if not settings.startup["ctt-replace-technologies"].value then
        research(chains.trigger[planet])
      end
      research(chains.support[planet])
      research({"planet-discovery-" .. planet})
    end

    if (settings.startup["ctt-vanilla-research-before-space-age"].value) then
      research({"steam-power", "automation-science-pack", "electronics", "electric-mining-drill", "repair-pack", "radar"})
    end

    for planet in pairs(chains.trigger) do
      local setting = settings.startup["ctt-pre-research-" .. planet]
      if setting and setting.value then
        research_planet(planet)
        for _, included in pairs(chains.includes[planet] or {}) do
          research_planet(included)
        end
      end
    end
  end
)
