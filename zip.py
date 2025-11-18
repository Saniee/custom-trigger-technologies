import json
import zipfile

with open("info.json", mode="r", encoding="utf-8") as info_f:
    mod_data = json.load(info_f)

mod_name = mod_data["name"]
mod_version = mod_data["version"]

with zipfile.ZipFile(f"{mod_name}_{mod_version}.zip", "w", zipfile.ZIP_DEFLATED, True, 9) as zf:
    # Mod Info
    zf.write("info.json", f"{mod_name}/info.json")
    zf.write("changelog.txt", f"{mod_name}/changelog.txt")
    zf.write("thumbnail.png", f"{mod_name}/thumbnail.png")

    # Main Files
    zf.write("settings.lua", f"{mod_name}/settings.lua")
    zf.write("control.lua", f"{mod_name}/control.lua")
    zf.write("data.lua", f"{mod_name}/data.lua")

    # Locale
    zf.write("locale/en/locale.cfg", f"{mod_name}/locale/en/locale.cfg")
