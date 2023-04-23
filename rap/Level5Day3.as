package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.media.Sound;
	import flash.utils.setTimeout;
	import Scoring;
	
	public class Level5Day3 extends MovieClip{
		
		public var scoring:Scoring = new Scoring();

		public function Level5Day3() {
			addChild(scoring);
		}
		public function nextPages(e:MouseEvent):void
		{
			MovieClip(root).nextFrame();
			trace("h");
		}
		public var getX: int = 0;
		public var getY: int = 0;
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		public var countCorrect:int = 0;
		//drag and drop
		public function dragIt(event: MouseEvent): void {
			getX = event.currentTarget.x;
			getY = event.currentTarget.y;
			event.currentTarget.startDrag();
		}
		function dropIt(event: MouseEvent): void {
			event.currentTarget.stopDrag();
			if((event.currentTarget.name=="sn1" || event.currentTarget.name=="sn2") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider2))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				MovieClip(root).sn1t.visible = true;
				event.currentTarget.visible = false;
				scoring.addPoints();
				cSound.play();
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
				{
					timer.stop();
					cd = 180;
					MovieClip(root).gotoAndStop(30,"lesson5");
				}
			}
			else if((event.currentTarget.name=="sn1" || event.currentTarget.name=="sn2") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider4))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				MovieClip(root).sn2t.visible = true;
				event.currentTarget.visible = false;
				scoring.addPoints();
				cSound.play();
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
				{
					timer.stop();
					cd = 180;
					MovieClip(root).gotoAndStop(30,"lesson5");
				}
			}
			else if(event.currentTarget.name=="sp1" && event.currentTarget.hitTestObject(MovieClip(root).pointCollider1))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				MovieClip(root).spt.visible = true;
				event.currentTarget.visible = false;
				scoring.addPoints();
				cSound.play();
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
				{
					timer.stop();
					cd = 180;
					MovieClip(root).gotoAndStop(30,"lesson5");
				}
			}
			else if((event.currentTarget.name=="sw1") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider3))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				MovieClip(root).swt.visible = true;
				event.currentTarget.visible = false;
				scoring.addPoints();
				cSound.play();
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
				{
					timer.stop();
					cd = 180;
					MovieClip(root).gotoAndStop(30,"lesson5");
				}
			}
			else if((event.currentTarget.name=="sl1") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider5))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				MovieClip(root).slt.visible = true;
				event.currentTarget.visible = false;
				scoring.addPoints();
				cSound.play();
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
		//time
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
		
		public function onComplete(event:TimerEvent): void {
			MovieClip(this.root).time_txt.text = String("Time's Up!!!");
			endTimeSound.play();
			timer.reset();
			cd = 180;
			
			scoring.decPoints();
			setTimeout(timerNextFrame, 1000);
		}
		public function timerNextFrame():void {
			if(MovieClip(root).currentFrame == 18)
			{
				MovieClip(root).gotoAndStop(30, "lesson5");
			}
		}

	}
	
}
