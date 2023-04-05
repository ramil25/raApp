package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	public class Level3Day1 extends MovieClip {

		public function Level3Day1() {
			// constructor code
		}
		public function playGame(e:MouseEvent):void
		{
			switch(e.currentTarget.name)
			{
				case "btnPlay_l3_d1":MovieClip(root).gotoAndStop(4,"lesson3");
				break;
				case "l3_d1_playBtn":MovieClip(root).gotoAndStop(3,"lesson3");
				break;
			}
			
		}

	}
	
}
