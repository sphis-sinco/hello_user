package helus.backend;

import flixel.util.FlxTimer;
import flixel.FlxState;

class Scene extends FlxState
{
	public var currentTimerTime:Float = 0;

	override public function new()
	{
		super();
	}

	public function waitThenRun(time:Float, whenDone:Void->Void, ?loops:Int = 1, ?applyCurrentTimerTime:Bool = true)
	{
		if (applyCurrentTimerTime)
			currentTimerTime += time;
		new FlxTimer().start((applyCurrentTimerTime ? currentTimerTime : 0) + time, t -> whenDone, loops);
	}
}
