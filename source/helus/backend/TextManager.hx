package helus.backend;

import helus.languages.LanguageManager;
import flixel.text.FlxText;
import flixel.math.FlxPoint;

class TextManager
{
	public static function makeText(text:String, ?position:FlxPoint, ?fieldWidth:Int = 0, ?size:Int = 8):FlxText
	{
		return new FlxText(position?.x, position?.y, fieldWidth, text, size);
	}

	public static function makeTranslatedText(line:String, ?position:FlxPoint, ?fieldWidth:Int = 0, ?size:Int = 8):FlxText
	{
		return makeText(LanguageManager.getLine(line), position, fieldWidth, size);
	}
}
