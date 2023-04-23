package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import Scoring;

	public class Level1Day5 extends MovieClip{
		
		public var scoring:Scoring = new Scoring();

		public function Level1Day5() {
			addChild(scoring);
		}
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		public function correctAnswer(e:MouseEvent):void
		{
			scoring.addPoints();
			cSound.play();
			
			if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 30)
			{
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				MovieClip(root).gotoAndStop(31,"lesson1");
				
			}
			else if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 31)
			{
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				MovieClip(root).gotoAndStop(32,"lesson1");
			}
			else if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 32)
			{
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				MovieClip(root).gotoAndStop(33,"lesson1");
			}
			else if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 33)
			{
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				MovieClip(root).gotoAndStop(34,"lesson1");
			}
			else if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 34)
			{
				e.currentTarget.removeEventListener(MouseEvent.CLICK,this.correctAnswer);
				MovieClip(root).gotoAndStop(35,"lesson1");
			}
		}
		public function wrongAnswer(e:MouseEvent):void
		{
			scoring.decPoints();
			if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 30)
			{
				wSound.play();
				
			}
			else if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 31)
			{
				wSound.play();
			}
			else if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 32)
			{
				wSound.play();
			}
			else if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 33)
			{
				wSound.play();
			}
			else if(MovieClip(root).currentScene.name == "lesson1" && MovieClip(root).currentFrame == 34)
			{
				wSound.play();
			}
			
		}

	}
	
}
