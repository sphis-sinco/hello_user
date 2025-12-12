package helus.scenes.intro;

import flixel.math.FlxPoint;
import helus.backend.TextManager;
import flixel.text.FlxText;
import flixel.FlxState;

class MakeAChoice extends FlxState
{
	public var helloText:FlxText = TextManager.makeTranslatedText('hello [[user]]', FlxPoint.get(20, 20));
	public var makeAChoice:FlxText = TextManager.makeTranslatedText('make a choice', FlxPoint.get(480, 270));

	override function create()
	{
		super.create();

		add(helloText);
		add(makeAChoice);
	}
}
