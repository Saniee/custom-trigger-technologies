data:extend({
  {
    type = "bool-setting",
    name = "ctt-vanilla-research-before-space-age",
    setting_type = "startup",
    default_value = false
  },
  {
    type = "bool-setting",
    name ="ctt-vanilla-research-replace",
    setting_type = "startup",
    default_value = true
  }
})

if mods["space-age"] then
  for _, planet in pairs({"vulcanus", "gleba", "fulgora", "aquilo"}) do
    data:extend({
      {
        type = "bool-setting",
        name = "ctt-pre-research-" .. planet,
        setting_type = "startup",
        default_value = false
      }
    })
  end
end
