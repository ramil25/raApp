package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;

	public class Level4Day1 extends MovieClip {

		public function Level4Day1() {
		
		}
		
		public function playButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name) {
				case "btnStart_l4_d1":
					MovieClip(root).gotoAndStop(3,"lesson4");
				break;
				case "btnPlay_l4_d1":
					MovieClip(root).gotoAndStop(4,"lesson4");
				break;
				default: 
					trace("Button not found in this frame.");
			}
		}
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		public function correctAnswer(e:MouseEvent):void 
		{
			cSound.play();
			
			switch(MovieClip(root).currentFrame) 
			{
				case 4:
					MovieClip(root).gotoAndStop(5,"lesson4");
				break;
				case 5:
					MovieClip(root).gotoAndStop(6,"lesson4");
				break;
				case 6:
					MovieClip(root).gotoAndStop(7,"lesson4");
				break;
				case 7:
					MovieClip(root).gotoAndStop(8,"lesson4");
				break;
				case 8:
					MovieClip(root).gotoAndStop(1,"lesson4");
				break;
				default:
					trace("No frame was found");
			}
		}
		
		public function wrongAnswer(e:MouseEvent):void 
		{
			wSound.play();
		}
	}

}