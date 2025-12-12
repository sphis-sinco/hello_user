package helus.languages;

import lime.utils.Assets;
import haxe.Json;

using StringTools;

class LanguageManager
{
	public static var language:String = 'en-US';
	public static var languageFile:LanguageFile;

	public static function getLine(line:String, ?fallback:String):String
	{
		if (languageFile == null)
			return fallback ?? line;

		var convertedLine = line.replace(' ', '').replace('\n', '-').replace('\t', '_');

		if (Reflect.hasField(languageFile.lines, convertedLine))
			return Reflect.field(languageFile.lines, convertedLine);
		else
			trace('Missing language file line: ' + convertedLine);

		return fallback ?? line;
	}

	public static function reloadLanguage()
	{
		languageFile = Json.parse(Assets.getText('assets/languages/$language.json'));
	}
}
