package helus.tests;

import helus.languages.LanguageManager;
import flixel.FlxState;

class LanguageTest extends FlxState
{
	override public function create()
	{
		super.create();

		trace(LanguageManager.getLine('Testing line\nIt\'s just cool LOL'));
	}
}
