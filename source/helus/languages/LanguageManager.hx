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
		var current_path = '.';

		var splitConvertedLine = convertedLine.split('/');
		if (splitConvertedLine.length > 0)
		{
			var i = 0;
			for (path in splitConvertedLine)
			{
				if (i < splitConvertedLine.length - 1)
				{
					json = Reflect.field(json, path);
					current_path += '/' + path;
				}
				i++;
			}

			convertedLine = splitConvertedLine[splitConvertedLine.length - 1];
		}

		if (Reflect.hasField(json, convertedLine))
			return Reflect.field(json, convertedLine);
		else
			trace('Missing language file line: $current_path/$convertedLine');

		return fallback ?? line;
	}

	public static function reloadLanguage()
	{
		languageFile = Json.parse(Assets.getText('assets/languages/$language.json'));
	}
}
