-- On new saves / Save file is loaded that previously didn't contain the mod
script.on_init(
  function()
    if (settings.startup["ctt-vanilla-research-before-space-age"].value) then
      local players = game.forces["player"]

      players.technologies["steam-power"].researched = true
      players.technologies["automation-science-pack"].researched = true
      players.technologies["electronics"].researched = true
      players.technologies["electric-mining-drill"].researched = true
      players.technologies["repair-pack"].researched = true
      players.technologies["radar"].researched = true
    end
  end
)
