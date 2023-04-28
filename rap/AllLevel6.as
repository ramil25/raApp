package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import Scoring;
	
	public class AllLevel6 extends MovieClip{
		
		public var scoring:Scoring = new Scoring();

		public function AllLevel6() {
			addChild(scoring);
		}
		public var robot1:Sound = new Robot1Sound();
		public var robot2:Sound = new Robot2Sound();
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		//navigation buttons for level 6
		public function goNextFrame(e:MouseEvent):void
		{
			e.currentTarget.removeEventListener(MouseEvent.CLICK, this.goNextFrame);
			MovieClip(this.root).nextFrame();
		}
		//Q and A 
		public function correctChoice(e:MouseEvent):void 
		{
			e.currentTarget.removeEventListener(MouseEvent.CLICK, this.correctChoice);
			scoring.addPoints();
			cSound.play();
			
			if(MovieClip(root).currentFrame == 12) 
			{
				MovieClip(root).gotoAndStop(13,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 13 )
			{
				MovieClip(root).gotoAndStop(14,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 14)
			{
				MovieClip(root).gotoAndStop(15,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 15)
			{
				MovieClip(root).gotoAndStop(16,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 16)
			{
				scoring.addScore("L6D1");
				MovieClip(root).gotoAndStop(59,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 21)
			{
				MovieClip(root).gotoAndStop(22,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 22)
			{
				MovieClip(root).gotoAndStop(23,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 23)
			{
				MovieClip(root).gotoAndStop(24,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 24)
			{
				MovieClip(root).gotoAndStop(25,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 25)
			{
				scoring.addScore("L6D2");
				MovieClip(root).gotoAndStop(59,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 32)
			{
				MovieClip(root).gotoAndStop(33,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 33)
			{
				MovieClip(root).gotoAndStop(34,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 34)
			{
				MovieClip(root).gotoAndStop(35,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 35)
			{
				MovieClip(root).gotoAndStop(36,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 36)
			{
				scoring.addScore("L6D3");
				MovieClip(root).gotoAndStop(59,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 41)
			{
				MovieClip(root).gotoAndStop(42,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 42)
			{
				MovieClip(root).gotoAndStop(43,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 43)
			{
				MovieClip(root).gotoAndStop(44,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 44)
			{
				MovieClip(root).gotoAndStop(45,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 45)
			{
				scoring.addScore("L6D4");
				MovieClip(root).gotoAndStop(59,"lesson6");
			}
			
			else if(MovieClip(root).currentFrame == 53)
			{
				MovieClip(root).gotoAndStop(54,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 54)
			{
				MovieClip(root).gotoAndStop(55,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 55)
			{
				MovieClip(root).gotoAndStop(56,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 56)
			{
				MovieClip(root).gotoAndStop(57,"lesson6");
			}
			else if(MovieClip(root).currentFrame == 57)
			{
				scoring.addScore("L6D5");
				MovieClip(root).gotoAndStop(59,"lesson6");
			}
			else 
			{
				trace("Clicked button wasn't found correctly.");
			}
		}
		
		public function wrongChoice(e:MouseEvent):void 
		{
			e.currentTarget.removeEventListener(MouseEvent.CLICK, this.wrongChoice);
			scoring.decPoints();
			wSound.play();
			
		}

	}
	
}
