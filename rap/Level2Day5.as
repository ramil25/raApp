package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.media.Sound;
	import Scoring;

	public class Level2Day5 extends MovieClip {

		public var scoring:Scoring = new Scoring();
		
		public function Level2Day5() {
			addChild(scoring);
		}
		
		public function playButtons(e:MouseEvent):void
		{
			if(e.currentTarget.name == "btnStart_l2_d5")
			{
				MovieClip(root).gotoAndStop(30,"lesson2");
			}
			else if(e.currentTarget.name == "btnPlay_l2_d5")
			{
				MovieClip(root).gotoAndStop(31,"lesson2");
			}
			else {
				trace("Button not found in this frame.");
			}
		}
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		public function correctChoice(e:MouseEvent):void 
		{
			scoring.addPoints();
			cSound.play();
			
			if(MovieClip(root).currentFrame == 31 && e.currentTarget.name == "btn_c2") 
			{
				MovieClip(root).gotoAndStop(32,"lesson2");
			}
			else if(MovieClip(root).currentFrame == 32 && e.currentTarget.name == "btn_c1")
			{
				MovieClip(root).gotoAndStop(33,"lesson2");
			}
			else if(MovieClip(root).currentFrame == 33 && e.currentTarget.name == "btn_c3")
			{
				MovieClip(root).gotoAndStop(34,"lesson2");
			}
			else 
			{
				trace("Clicked button wasn't found correctly.");
			}
		}
		
		public function wrongChoice(e:MouseEvent):void 
		{
			if(MovieClip(root).currentFrame == 31 && e.currentTarget.name == "btn_c1") 
			{
				scoring.decPoints();
				wSound.play();
			}
			else if(MovieClip(root).currentFrame == 31 && e.currentTarget.name == "btn_c3") 
			{
				scoring.decPoints();
				wSound.play();
			}
			else if(MovieClip(root).currentFrame == 32 && e.currentTarget.name == "btn_c2")
			{
				scoring.decPoints();
				wSound.play();
			}
			else if(MovieClip(root).currentFrame == 32 && e.currentTarget.name == "btn_c3")
			{
				scoring.decPoints();
				wSound.play();
			}
			else if(MovieClip(root).currentFrame == 33 && e.currentTarget.name == "btn_c1")
			{
				scoring.decPoints();
				wSound.play();
			}
			else if(MovieClip(root).currentFrame == 33 && e.currentTarget.name == "btn_c2")
			{
				scoring.decPoints();
				wSound.play();
			}
			else 
			{
				trace("Clicked button wasn't found correctly.");
			}
		}
		
	}

}