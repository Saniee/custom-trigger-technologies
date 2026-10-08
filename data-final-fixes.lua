local chains = require("chains")
local technologies = data.raw["technology"]

local merged = {}

for planet, trigger_techs in pairs(chains.trigger) do
  local discovery = technologies["planet-discovery-" .. planet]

  if settings.startup["ctt-replace-technologies"].value and discovery then
    discovery.effects = discovery.effects or {}

    for _, name in pairs(trigger_techs) do
      local tech = technologies[name]
      if tech then
        for _, effect in pairs(tech.effects or {}) do
          table.insert(discovery.effects, effect)
        end
        tech.enabled = false
        merged[name] = discovery.name
      end
    end
  end
end

for _, tech in pairs(technologies) do
  if tech.prerequisites and tech.enabled ~= false then
    local seen = {}
    local prerequisites = {}
    for _, prerequisite in pairs(tech.prerequisites) do
      local replacement = merged[prerequisite] or prerequisite
      if replacement ~= tech.name and not seen[replacement] then
        seen[replacement] = true
        table.insert(prerequisites, replacement)
      end
    end
    tech.prerequisites = prerequisites
  end
end
