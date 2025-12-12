package helus.scenes.intro;

import helus.backend.TextManager;
import flixel.text.FlxText;
import flixel.FlxState;

class MakeAChoice extends FlxState
{
    public var helloText:FlxText= TextManager.makeTranslatedText('hello [[user]]');

	override function create()
	{
		super.create();

        add(helloText);
	}
}
