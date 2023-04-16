package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;

	public class Level4Day2 extends MovieClip {

		public function Level4Day2() {
		
		}
		
		public function startButton(e:MouseEvent):void
		{
			MovieClip(root).gotoAndStop(10,"lesson4");
		}
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		public var fly:Sound = new FlySound();
		public var cry:Sound = new CrySound();
		public var sunny:Sound = new SunnySound();
		public var pony:Sound = new PonySound();
		
		public function nextButtons(e:MouseEvent):void
		{
			if(e.currentTarget.name == "btn_next1") {
				MovieClip(root).gotoAndStop(11,"lesson4");
			}
			else if(e.currentTarget.name == "btn_next2") {
				MovieClip(root).gotoAndStop(12,"lesson4");
			}
			else if(e.currentTarget.name == "btn_play") {
				MovieClip(root).gotoAndStop(13,"lesson4");
			}
			else if(e.currentTarget.name == "btn_play_1") {
				MovieClip(root).gotoAndStop(14,"lesson4");
			}
		}
		
		public function playSounds(e:MouseEvent):void
		{
			if(e.currentTarget.name == "flyZoomBtn") {
				e.currentTarget.play();
			}
			else if(e.currentTarget.name == "cryZoomBtn") {
				e.currentTarget.play();
			}
			else if(e.currentTarget.name == "sunnyZoomBtn") {
				e.currentTarget.play();
			}
			else if(e.currentTarget.name == "ponyZoomBtn") {
				e.currentTarget.play();
			}
		}
		
		public function correctAnswer(e:MouseEvent):void 
		{
			cSound.play();
			
			switch(MovieClip(root).currentFrame) 
			{
				case 14:
					MovieClip(root).gotoAndStop(15,"lesson4");
				break;
				case 15:
					MovieClip(root).gotoAndStop(16,"lesson4");
				break;
				case 16:
					MovieClip(root).gotoAndStop(17,"lesson4");
				break;
				case 17:
					MovieClip(root).gotoAndStop(18,"lesson4");
				break;
				case 18:
					MovieClip(root).gotoAndStop(33,"lesson4");
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