package helus.languages;

import lime.utils.Assets;
import haxe.Json;

class LanguageManager
{
	public static var language:String = 'en-US';
	public static var languageFile:LanguageFile;

	public static function getLine(line:String, ?fallback:String):String
	{
		return fallback;
	}

	public static function reloadLanguage()
	{
		languageFile = Json.parse(Assets.getText('assets/languages/$language.json'));
	}
}
