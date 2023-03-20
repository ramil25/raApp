package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;


	public class Level1Day1 extends MovieClip {

		public function Level1Day1() {
		
		}
		
		public function gotoPlay(e:MouseEvent):void
		{
			MovieClip(root).gotoAndStop(4,"lesson1");
		}

	}

}