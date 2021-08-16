package;

import CoolUtil.Files;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.util.FlxColor;
import flixel.ui.FlxButton;
import flixel.addons.ui.FlxUI;
import flixel.addons.ui.FlxUITabMenu;
import flixel.addons.ui.FlxUIDropDownMenu;

class ViewerState extends FlxState
{
    var list:String;
    var listsplit:Array<String>;
    
    var stagestuff:FlxInputText;
    var stagetext:String;
	override public function create()
        {
            var stage = new FlxUIInputText(10, 10, 70, 'philly', 8);
            super.create();
            if (stagestuff.text == 'philly') {
                var stagesParts= sys.io.File.getContent(('assets/images/stages/' + stagestuff.text + 'parts.txt');
                var artsplit:Array<String>;
                var scroll = sys.io.File.getContent(('assets/images/stages/' + stagestuff.text + 'sf.txt');
                var scrollsplit:Array<String>;
                scrollsplit = scroll.split('\n');
                artsplit = stagesParts.split('\n');
                public var SplitCurrent:String;
                public var partCurrent:Float;
                for (i in 0...artsplit.length) {
                    public var part = new FlxSprite().loadGraphic('assets/images/stages/' + stagestuff.text + artsplit[i]);
                    for (i in 0...scrollsplit.length) {
                        part.scrollFactor.set(artsplit[i], artsplit[i]);
                    }
                }
            };
            list = sys.io.File.getContent('assets/images/stages/stagelist.txt');
            listsplit = list.split('\n');
            add(stagestuff);
        }
        override public function update(elapsed:Float)
        {
            super.update(elapsed);
            // why did i do this this way
            stagestuff = stage;
            stagetext = stagestuff.text;
            for (i in 0...listsplit.length) {
                //listsplit[i]
                if (stagestuff.text == listsplit[i]) {
                    trace('eyyyyyy');
                    if (FlxG.keys.pressed.ENTER) {
                        remove(part);
                        trace('we are loading some stuff');
                        var stagesParts2= sys.io.File.getContent('assets/images/stages/' + stagestuff.text + 'parts.txt');
                        var artsplit2:Array<String>;
                        var scroll2 = sys.io.File.getContent('assets/images/stages/' + stagestuff.text + 'sf.txt');
                        var scrollsplit2:Array<String>;
                        scrollsplit2 = scroll2.split('\n');
                        artsplit2 = stagesParts2.split('\n');
                        public var SplitCurrent2:String;
                        public var partCurrent2:Float;
                        for (i in 0...artsplit.length) {
                            public var part = new FlxSprite().loadGraphic('assets/images/stages/' + stagestuff.text + artsplit2[i]);
                            for (i in 0...scrollsplit2.length) {
                                part2.scrollFactor.set(artsplit2[i], artsplit2[i]);
                            }
                        }
                    };
                }
            }
            if (FlxG.keys.pressed.LEFT) FlxG.camera.scroll.add(-3, 0);
            if (FlxG.keys.pressed.RIGHT) FlxG.camera.scroll.add(3, 0);
            if (FlxG.keys.pressed.UP) FlxG.camera.scroll.add(0, -3);
            if (FlxG.keys.pressed.DOWN) FlxG.camera.scroll.add(0, 3);
        }
}