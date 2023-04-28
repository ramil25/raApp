package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.display.SimpleButton;
	import Scoring;
	
	public class Level3Day5 extends MovieClip {
		
		public var scoring:Scoring = new Scoring();

		public function Level3Day5() {
			addChild(scoring);
		}
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		public function playDay5(e:MouseEvent):void
		{
			MovieClip(root).gotoAndStop(38,"lesson3");
		}
		//answer detection
		public function correctAnswer(e:MouseEvent):void
		{
			if(MovieClip(root).currentScene.name == "lesson3" && MovieClip(root).currentFrame == 38)
			{
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				MovieClip(root).gotoAndStop(39,"lesson3");
				
			}
			else if(MovieClip(root).currentScene.name == "lesson3" && MovieClip(root).currentFrame == 39)
			{
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				MovieClip(root).gotoAndStop(40,"lesson3");
			}
			else if(MovieClip(root).currentScene.name == "lesson3" && MovieClip(root).currentFrame == 40)
			{
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				MovieClip(root).gotoAndStop(41,"lesson3");
			}
			else if(MovieClip(root).currentScene.name == "lesson3" && MovieClip(root).currentFrame == 41)
			{
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				MovieClip(root).gotoAndStop(42,"lesson3");
			}
			else if(MovieClip(root).currentScene.name == "lesson3" && MovieClip(root).currentFrame == 42)
			{
				scoring.addScore("L3D5");
				MovieClip(root).gotoAndStop(43,"lesson3");
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				
			}
			scoring.addPoints();
			cSound.play();
		}
		public function wrongAnswer(e:MouseEvent):void
		{
			scoring.decPoints();
			wSound.play();
			e.currentTarget.removeEventListener(MouseEvent.CLICK,this.wrongAnswer);
			
		}

	}
	
}
