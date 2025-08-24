# v.1.2.1 (8/24/2025)
- Turns out I have to use `sanitize` instead of `redirect` with `flixel-modding` 1.4.0.

# v.1.2 (8/23/2025)
- Added missing `#if sys #end`'s in `sphis.modding.ScriptsManager`
- Fixed typo in `sphis.modding.ScriptsManager`
- `flixel-modding` v1.4.0 is supported and v1.3.0 support has been removed

# v.1.1 (8/10/2025)
- Added `sphis.grid.CalculateGridPosition` - this assists in calculation of grid positions
- Added `sphis.grid.GridGlobal` - this manages anything and all relating to files in `sphis.grid.`
- Added `sphis.Version` - this is a more dynamic SemVer basically
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