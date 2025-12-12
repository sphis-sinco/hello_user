package helus;

import helus.languages.LanguageManager;
import flixel.FlxState;

class InitState extends FlxState
{
	override public function create()
	{
		super.create();

		LanguageManager.language = 'en-US';
		LanguageManager.reloadLanguage();

		FlxG.switchState(() -> new helus.tests.LanguageTest());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
