package helus.scenes.intro;

import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import helus.backend.Scene;
import flixel.math.FlxPoint;
import helus.backend.TextManager;
import flixel.text.FlxText;

class MakeAChoice extends Scene
{
	public var helloText:FlxText = TextManager.makeTranslatedText('intro/hello [[user]]', FlxPoint.get(20, 20));
	public var makeAChoice:FlxText = TextManager.makeTranslatedText('intro/make a choice', FlxPoint.get(480, 270));

	override function create()
	{
		super.create();

		add(helloText);
		add(makeAChoice);

		waitThenRun(0, () ->
		{
			helloText.alpha = 0;
			makeAChoice.alpha = 0;
		});
		waitThenRun(1, () ->
		{
			FlxTween.tween(helloText, {alpha: 1}, 1, {
				ease: FlxEase.smootherStepInOut
			});
		});
		waitThenRun(2, () ->
		{
			FlxTween.tween(makeAChoice, {alpha: 1}, 1, {
				ease: FlxEase.smootherStepInOut
			});
		});
	}
}
