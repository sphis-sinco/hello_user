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

		var convertedLine = line.toLowerCase().replace(' ', '-').replace('\n', '_').replace('\t', '|');
		var json = languageFile.lines;

		if (convertedLine.split('/').length > 0)
			for (path in convertedLine.split('/'))
			{
				json = Reflect.field(json, path);
			}

		if (Reflect.hasField(json, convertedLine))
			return Reflect.field(json, convertedLine);
		else
			trace('Missing language file line: ' + convertedLine);

		return fallback ?? line;
	}

	public static function reloadLanguage()
	{
		languageFile = Json.parse(Assets.getText('assets/languages/$language.json'));
	}
}
