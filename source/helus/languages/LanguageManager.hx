package helus.languages;

class LanguageManager
{
    public static var LANGUAGE:LanguageFile;

	public static function getLine(line:String, ?fallback:String):String { return fallback; }
	public static function reloadLanguage() {}
}
