package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.utils.setTimeout;
	import Scoring;

	public class Level5Day1 extends MovieClip {

		public var scoring:Scoring = new Scoring();
		
		public function Level5Day1() {
			addChild(scoring);
		}
		
		public var getX: int = 0;
		public var getY: int = 0;
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		public var countCorrect:int = 0;
		
		public var robot1Sound: Sound = new RB1L4D2Sound();
		public var robot2Sound: Sound = new RobotL5D1Sound();	
		
		public function nextPage(e: MouseEvent): void {
			SoundMixer.stopAll();
			MovieClip(root).nextFrame();
			//e.currentTarget.removeEventListener(MouseEvent.CLICK, this.nextPage);
		}
		//drag and drop
		public function dragIt(event: MouseEvent): void {
			getX = event.currentTarget.x;
			getY = event.currentTarget.y;
			event.currentTarget.startDrag();
		}
		function dropIt(event: MouseEvent): void {
			event.currentTarget.stopDrag();
			if((event.currentTarget.name=="dr1" || event.currentTarget.name=="dr2") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider1))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider1.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider1.y-10;
				scoring.addPoints();
				cSound.play();
				event.currentTarget.visible = false;
				MovieClip(root).dr1t.visible = true;
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
				{
					timer.stop();
					cd = 180;
					MovieClip(root).gotoAndStop(30,"lesson5");
				}
			}
			else if((event.currentTarget.name=="dr1" || event.currentTarget.name=="dr2") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider2))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider2.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider2.y-10;
				scoring.addPoints();
				cSound.play();
				event.currentTarget.visible = false;
				MovieClip(root).dr2t.visible = true;
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
				{
					timer.stop();
					cd = 180;
					MovieClip(root).gotoAndStop(30,"lesson5");
				}
			}
			else if((event.currentTarget.name=="br1") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider3))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider3.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider3.y-10;
				scoring.addPoints();
				cSound.play();
				event.currentTarget.visible = false;
				MovieClip(root).brt.visible = true;
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
				{
					timer.stop();
					cd = 180;
					MovieClip(root).gotoAndStop(30,"lesson5");
				}
			}
			else if((event.currentTarget.name=="fr1") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider4))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider4.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider4.y-10;
				scoring.addPoints();
				cSound.play();
				event.currentTarget.visible = false;
				MovieClip(root).frt.visible = true;
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
				{
					timer.stop();
					cd = 180;
					MovieClip(root).gotoAndStop(30,"lesson5");
				}
			}
			else if((event.currentTarget.name=="tr1") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider5))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider5.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider5.y-10;
				scoring.addPoints();
				cSound.play();
				event.currentTarget.visible = false;
				MovieClip(root).trt.visible = true;
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
				{
					timer.stop();
					cd = 180;
					MovieClip(root).gotoAndStop(30,"lesson5");
				}
					
			}
			else{
				event.currentTarget.x = getX;
				event.currentTarget.y = getY;
				scoring.decPoints();
				wSound.play();
				getX = 0;
				getY = 0;
			}
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
			if(MovieClip(root).currentFrame == 7)
			{
				MovieClip(root).gotoAndStop(30, "lesson5");
			}
		}

	}

}