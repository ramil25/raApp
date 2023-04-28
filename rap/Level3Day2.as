package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.utils.setTimeout;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import Scoring;

	public class Level3Day2 extends MovieClip {
		
		public var scoring:Scoring = new Scoring();

		public function Level3Day2() {
			addChild(scoring);
		}

		public var robot1Sound: Sound = new L3D2Robot1Sound();
		public var robot2Sound: Sound = new L3D2Robot2Sound();
		public var getX: int = 0;
		public var getY: int = 0;
		public var cSound: Sound = new CorrectSound();
		public var wSound: Sound = new WrongSound();
		public function nextFramed(e: MouseEvent): void {
			e.currentTarget.removeEventListener(MouseEvent.CLICK, this.nextFramed);
			if(MovieClip(this.root).currentFrame ==19)
			{
				scoring.addScore("L3D2");
				MovieClip(this.root).gotoAndStop(43);
			}
			else{
				SoundMixer.stopAll();
				MovieClip(root).nextFrame();				
			}
		}

		//drag and drop
		public function startDragg(event: MouseEvent): void {
			getX = event.currentTarget.x;
			getY = event.currentTarget.y;
			event.currentTarget.startDrag();
		}

		public function stopDragg(event: MouseEvent): void {
			event.currentTarget.stopDrag();
			if(MovieClip(this.root).currentFrame==15 && event.currentTarget.name=="c3_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = 468;
				event.currentTarget.y = 357;
				scoring.addPoints();
				cSound.play();
				timer.stop();
				cd = 180;
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
			}
			else if(MovieClip(this.root).currentFrame==16 && event.currentTarget.name=="c3_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = MovieClip(this.root).pointCollider.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider.y-10;
				scoring.addPoints();
				cSound.play();
				timer.stop();
				cd = 180;
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
			}
			else if(MovieClip(this.root).currentFrame==17 && event.currentTarget.name=="c1_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = MovieClip(this.root).pointCollider.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider.y-10;
				scoring.addPoints();
				cSound.play();
				timer.stop();
				cd = 180;
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
			}
			else if(MovieClip(this.root).currentFrame==18 && event.currentTarget.name=="c1_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = MovieClip(this.root).pointCollider.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider.y-10;
				scoring.addPoints();
				cSound.play();
				timer.stop();
				cd = 180;
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
			}
			else if(MovieClip(this.root).currentFrame==19 && event.currentTarget.name=="c1_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = MovieClip(this.root).pointCollider.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider.y-10;
				scoring.addPoints();
				cSound.play();
				timer.stop();
				cd = 180;
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
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
		
		public function ZoomObject(e:MouseEvent):void
		{
			switch(e.currentTarget.name)
			{
				case "wayZoomBtn": e.currentTarget.play();
				break;
				case "catZoomBtn": e.currentTarget.play();
				break;
				case "weightZoomBtn": e.currentTarget.play();
				break;
				case "eightZoomBtn": e.currentTarget.play();
				break;
				case "cookieZoomBtn": e.currentTarget.play();
				break;
				case "tieZoomBtn": e.currentTarget.play();
				break;
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
			if(MovieClip(root).currentFrame == 15)
			{
				MovieClip(root).gotoAndStop(16, "lesson3");
			}
			else if(MovieClip(root).currentFrame == 16)
			{
				MovieClip(root).gotoAndStop(17, "lesson3");
			}
			else if(MovieClip(root).currentFrame == 17)
			{
				MovieClip(root).gotoAndStop(18, "lesson3");
			}
			else if(MovieClip(root).currentFrame == 18)
			{
				MovieClip(root).gotoAndStop(19, "lesson3");
			}
			else if(MovieClip(root).currentFrame == 19)
			{
				scoring.addScore("L3D2");
				MovieClip(root).gotoAndStop(43, "lesson3");
			}

		}

	}

}