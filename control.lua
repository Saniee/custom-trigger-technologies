script.on_init(
  function()
    if (settings.startup["ctt-vanilla-research-before-space-age"].value) then
      game.forces["player"].technologies["steam-power"].researched = true
      game.forces["player"].technologies["automation-science-pack"].researched = true
      game.forces["player"].technologies["electronics"].researched = true
      game.forces["player"].technologies["electric-mining-drill"].researched = true
      game.forces["player"].technologies["repair-pack"].researched = true
      game.forces["player"].technologies["radar"].researched = true
    end
  end
)
