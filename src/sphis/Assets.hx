import haxe.Json;

class Assets {
	public static var IMAGE_EXT:String = 'png';
	public static var VIDEO_EXT:String = 'mp4';
	public static var SOUND_EXT:String = 'wav';

	public static var HSCRIPT_EXT:String = 'hxc';

	// file paths

	public static function getPath(id:String) {
		#if flixelModding
		@:privateAccess {
			FlxG.log.notice('getPath($id)');
			return FlxModding.system.redirect(id);
		}
		#else
		return id;
		#end
	}

	public static function getAssetPath(id:String)
		return getPath('assets/$id');

	public static function getDataPath(id:String)
		return getAssetPath('data/$id');

	public static function getImagePath(id:String)
		return getAssetPath('images/$id.$IMAGE_EXT');

	public static function getVideoPath(id:String)
		return getAssetPath('videos/$id.$VIDEO_EXT');

	public static function getMusicPath(id:String)
		return getAssetPath('music/$id.$SOUND_EXT');

	public static function getSoundPath(id:String)
		return getAssetPath('sounds/$id.$SOUND_EXT');

	// file content

	public static function getFileTextContent(id:String, ?dataFolder:Bool = true) {
		var path = getAssetPath('$id');
		if (dataFolder)
			path = getDataPath('$id');

		#if flixelModding
		return FlxModding.system.getText(path);
		#else
		// lime or openfl
		return lime.utils.Assets.getText(path);
		#end
	}

	public static function getTextFile(id:String, ?dataFolder:Bool = true)
		return getFileTextContent('$id.txt', dataFolder);

	public static function getFileJsonContent(id:String, ?dataFolder:Bool = true)
		return Json.parse(getFileTextContent(id, dataFolder));

	public static function getJsonFile(id:String, ?dataFolder:Bool = true)
		return getFileJsonContent('$id.json', dataFolder);
}