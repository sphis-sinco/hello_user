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

	public function waitThenRun(time:Float, whenDone:Void->Void, ?applyCurrentTimerTime:Bool = true, ?functionName:String)
	{
        trace('Waiting ${(applyCurrentTimerTime ? currentTimerTime : 0) + time} to run ${(functionName != null ? functionName : '' + whenDone)}');

        if (applyCurrentTimerTime)
			currentTimerTime += time;

		FlxTimer.wait((applyCurrentTimerTime ? currentTimerTime : 0) + time, whenDone);
	}
}
