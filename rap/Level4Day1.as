package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import Scoring;

	public class Level4Day1 extends MovieClip {
		
		public var scoring:Scoring = new Scoring();

		public function Level4Day1() {
			addChild(scoring);
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
			scoring.addPoints();
			cSound.play();
			timer.stop();
			cd = 180;
			
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
					scoring.addScore("L4D1");
					MovieClip(root).gotoAndStop(33,"lesson4");
				break;
				default:
					trace("No frame was found");
			}
		}
		
		public function wrongAnswer(e:MouseEvent):void 
		{
			scoring.decPoints();
			wSound.play();
		}
		
		//timer
		private var cd: int = 180; // 3 minutes = 180 seconds
		public var timer:Timer = new Timer(1000, cd);
		public var endTimeSound:Sound = new TimesUpSound();
		
		public function onTick(event:TimerEvent): void {
			cd--;
			var minutes:int = Math.floor(cd / 60);
			var seconds:int = cd % 60;
			var time:String = minutes + ":" + (seconds < 10 ? "0" : "") + seconds;
			MovieClip(this.root).time_txt.text = time;
		}
		
		public function onComplete(event: TimerEvent): void {
			MovieClip(this.root).time_txt.text = String("Time's Up!!!");
			endTimeSound.play();
			timer.reset();
			cd = 180;
			
			scoring.decPoints();
			setTimeout(timerNextFrame, 1000);
		}
		
		public function timerNextFrame():void {
			if(MovieClip(root).currentFrame == 4)
			{
				MovieClip(root).gotoAndStop(5, "lesson4");
			}
			else if(MovieClip(root).currentFrame == 5)
			{
				MovieClip(root).gotoAndStop(6, "lesson4");
			}
			else if(MovieClip(root).currentFrame == 6)
			{
				MovieClip(root).gotoAndStop(7, "lesson4");
			}
			else if(MovieClip(root).currentFrame == 7)
			{
				MovieClip(root).gotoAndStop(8, "lesson4");
			}
			else if(MovieClip(root).currentFrame == 8)
			{
				scoring.addScore("L4D1");
				MovieClip(root).gotoAndStop(33, "lesson4");
			}

		}
	}

}