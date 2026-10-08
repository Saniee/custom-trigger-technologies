return {
  trigger = {
    vulcanus = {"calcite-processing", "tungsten-carbide", "foundry", "big-mining-drill", "tungsten-steel"},
    gleba = {"agriculture", "yumako", "jellynut", "biochamber", "artificial-soil", "bioflux", "bacteria-cultivation", "bioflux-processing", "heating-tower"},
    fulgora = {"holmium-processing", "electromagnetic-plant"},
    aquilo = {"lithium-processing", "cryogenic-plant"}
  },
  science_pack = {
    vulcanus = "metallurgic-science-pack",
    gleba = "agricultural-science-pack",
    fulgora = "electromagnetic-science-pack",
    aquilo = "cryogenic-science-pack"
  },
  support = {
    vulcanus = {"sulfur-processing", "advanced-material-processing", "automation-2", "concrete", "advanced-oil-processing", "lubricant", "electric-engine", "plastics", "advanced-circuit"},
    gleba = {"landfill", "advanced-material-processing", "automation-2", "concrete"},
    fulgora = {"production-science-pack", "advanced-electronics-2", "advanced-material-processing", "automation-2", "concrete", "recycling", "sulfur-processing", "battery", "electric-energy-accumulators", "advanced-oil-processing", "plastics", "advanced-circuit"},
    aquilo = {}
  },
  includes = {
    aquilo = {"vulcanus", "gleba", "fulgora"}
  }
}
