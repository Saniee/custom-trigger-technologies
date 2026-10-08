# Custom Trigger Technologies

A Factorio mod that makes the trigger technologies optional instead of mandatory. Everything is a startup setting.

Targets Factorio 2.1. Space Age is optional.

## Settings

### Merge technologies into their main technology

Default: on. The secondary technologies are disabled and their recipes and effects are merged into the main technology. Technologies that required them require the main technology instead.

- Nauvis (only with the revert setting below): Oil Gathering goes into Oil Processing, and Uranium Mining goes into Uranium Processing.
- Space Age: each planet's trigger technologies, except the science pack ones, go into that planet's discovery technology.

| Planet | Moved into its discovery technology |
|---|---|
| Vulcanus | Calcite processing, Tungsten carbide, Foundry, Big mining drill, Tungsten steel |
| Gleba | Agriculture, Yumako, Jellynut, Biochamber, Artificial soil, Bioflux, Bacteria cultivation, Bioflux processing, Heating tower |
| Fulgora | Holmium processing, Electromagnetic plant |
| Aquilo | Lithium processing, Cryogenic plant |

The science pack technologies still unlock the vanilla way, by crafting the item they require.

### Revert Trigger Research technologies for Nauvis

Default: off. Steel Axe, Oil Processing and Uranium Processing become normal science-cost technologies again. Steam power, Electronics, Automation science pack, Electric mining drill, Repair pack and Radar are researched at the start of a new save.

### Pre-research planet settings

Each Space Age planet has a pre-research setting (off by default), for mods that let you start on a planet other than Nauvis. On a new save it researches that planet's discovery technology and the technologies needed to craft its ingredients, so you are not locked out. With the merge setting off, it also researches the planet's trigger technologies. Aquilo also does this for Vulcanus, Gleba and Fulgora.

Pre-research only takes effect on new saves, or on saves that didn't previously have the mod. Researching a technology this way does not research its other prerequisites.

## Building

```bash
python zip.py
```

Writes `custom-trigger-technologies_<version>.zip`, ready to put in the mods folder.
