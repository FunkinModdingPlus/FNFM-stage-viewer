package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.util.FlxColor;
import flixel.ui.FlxButton;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		var myButton = new FlxButton(0, 0, "View", press);
		myButton.screenCenter();
		add(myButton);
	}
	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
	function press():Void
		{
			trace('view time');
			FlxG.switchState(new ViewerState());
		}

}
