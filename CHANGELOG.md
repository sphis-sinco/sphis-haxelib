# v.1.1 (8/10/2025)
- Fixed errors when `flixel.system.FlxModding` hasn't been initalized / isn't enabled
- Fixed `sphis.Assets` error: `lime.graphics.Image should be openfl.display.BitmapData`
- Added new function to `sphis.defines.DefineManager`: `enabledDefine` - returns if a define is in `DEFINES`
- Fixed compiling errors in `sphis.Assets.hx` related to imports
- New dependency: `flixel-modding`
  - New dependency: `hscript`
- Added `sphis.modding.ScriptsManager` - this helps with modding via `hscript-iris`
  - `hscriptIris` define will enable this
- New dependency: `hscript-iris`

# v.1 (8/10/2025)
- Added `sphis.defines.DefineManager` - This helps with defines
- Added `sphis.Assets` - This helps with asset paths and asset contents