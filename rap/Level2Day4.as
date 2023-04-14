package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;

	public class Level2Day4 extends MovieClip {

		public function Level2Day4() {
			// constructor code
		}
		
		public var titleSound:Sound = new L2D4TitleSound();
		public var par1Sound:Sound = new L2D4PAR1Sound();
		public var par2Sound:Sound = new L2D4PAR2Sound();
		
		public function playL2D4(e:MouseEvent):void
		{
			switch(e.currentTarget.name){
				case "l2d4PlayBtn": 
					MovieClip(root).gotoAndStop(26,"lesson2");
					titleSound.play();
				break;
				case "nextPar1": 
					MovieClip(root).gotoAndStop(27,"lesson2");
					par1Sound.play();
				break;
				case "nextPar2": 
					MovieClip(root).gotoAndStop(28,"lesson2");
					par2Sound.play();
				break;
				case "nextPar3": 
					MovieClip(root).gotoAndStop(34,"lesson2");
				break;
			}
		}
	}
	
}
