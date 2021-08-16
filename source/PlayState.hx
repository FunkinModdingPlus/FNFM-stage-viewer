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
	var scaleamount = 1.5;
	var bg = new FlxSprite(-100).loadGraphic("assets/images/sky.png");
	var city = new FlxSprite(-100).loadGraphic("assets/images/city.png");
	var streetBehind = new FlxSprite(-100).loadGraphic("assets/images/behindTrain.png");
	var street = new FlxSprite(-100).loadGraphic("assets/images/street.png");
	override public function create()
	{
		super.create();
		bg.scrollFactor.set(0.1, 0.1);
		bg.antialiasing = true;
		bg.setGraphicSize(Std.int(bg.width / scaleamount));
		bg.screenCenter();
		add(bg);
		city.scrollFactor.set(0.3, 0.3);
		city.antialiasing = true;
		city.setGraphicSize(Std.int(city.width / scaleamount));
		city.screenCenter();
		add(city);
		streetBehind.antialiasing = true;
		streetBehind.screenCenter();
		streetBehind.setGraphicSize(Std.int(streetBehind.width / scaleamount));
		add(streetBehind);
		street.antialiasing = true;
		street.screenCenter();
		street.setGraphicSize(Std.int(street.width / scaleamount));
		add(street);
		
		trace('finito :sunglasses:');
	}
	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.pressed.LEFT) FlxG.camera.scroll.add(-3, 0);
        if (FlxG.keys.pressed.RIGHT) FlxG.camera.scroll.add(3, 0);
		if (FlxG.keys.pressed.UP) FlxG.camera.scroll.add(0, -3);
        if (FlxG.keys.pressed.DOWN) FlxG.camera.scroll.add(0, 3);
		if (FlxG.keys.pressed.V) {
			scaleamount -= 0.5;
			remove(street);
			street.setGraphicSize(Std.int(street.width / scaleamount));
			remove(streetBehind);
			streetBehind.setGraphicSize(Std.int(streetBehind.width / scaleamount));
			remove(city);
			city.setGraphicSize(Std.int(city.width / scaleamount));
			remove(bg);
			bg.setGraphicSize(Std.int(bg.width / scaleamount));
			// layering nosence
			add(bg);
			add(city);
			add(streetBehind);
			add(street);
		};
		if (FlxG.keys.pressed.B) {
			scaleamount += 0.5;
			remove(street);
			street.setGraphicSize(Std.int(street.width / scaleamount));
			remove(streetBehind);
			streetBehind.setGraphicSize(Std.int(streetBehind.width / scaleamount));
			remove(city);
			city.setGraphicSize(Std.int(city.width / scaleamount));
			remove(bg);
			bg.setGraphicSize(Std.int(bg.width / scaleamount));
			// layering nosence
			add(bg);
			add(city);
			add(streetBehind);
			add(street);
		};
	}

}
