import json
import zipfile

with open("info.json", mode="r", encoding="utf-8") as info_f:
    mod_data = json.load(info_f)

version = mod_data["version"]
name = mod_data["name"]

with zipfile.ZipFile(f"{name}_{version}.zip", "w", zipfile.ZIP_DEFLATED, True, 9) as zf:
    # Mod Info
    zf.write("info.json", f"{name}/info.json")
    zf.write("changelog.txt", f"{name}/changelog.txt")
    zf.write("thumbnail.png", f"{name}/thumbnail.png")

    # Main Files
    zf.write("settings.lua", f"{name}/settings.lua")
    zf.write("control.lua", f"{name}/control.lua")
    zf.write("data.lua", f"{name}/data.lua")