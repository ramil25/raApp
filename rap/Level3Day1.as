package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.utils.Timer;
	import flash.utils.setTimeout;
	import flash.events.TimerEvent;
	import Scoring;

	public class Level3Day1 extends MovieClip {
		
		public var scoring:Scoring = new Scoring();

		public function Level3Day1() {
			addChild(scoring);
		}
		public function playGame(e: MouseEvent): void {
			switch (e.currentTarget.name) {
				case "btnPlay_l3_d1":
					MovieClip(root).gotoAndStop(4, "lesson3");
					break;
				case "l3_d1_playBtn":
					MovieClip(root).gotoAndStop(3, "lesson3");
					break;
			}

		}
		//drag and drop
		public var getX: int = 0;
		public var getY: int = 0;
		public var cSound: Sound = new CorrectSound();
		public var wSound: Sound = new WrongSound();
		public var btnName: String = "";
		public function startDragg(event: MouseEvent): void {
			getX = event.currentTarget.x;
			getY = event.currentTarget.y;
			btnName + event.currentTarget.name;
			event.currentTarget.startDrag();
		}

		public function stopDragg(event: MouseEvent): void {
			event.currentTarget.stopDrag();
			if (MovieClip(root).currentFrame == 4 && event.currentTarget.name == "a_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).trig)) {
				MovieClip(this.root).a_btn.x = 391;
				MovieClip(this.root).a_btn.y = 636;
				scoring.addPoints();
				cSound.play();
				timer.stop();
				countdown = 180;
				MovieClip(this.root).nextBtn.visible = true;
			} else if (MovieClip(root).currentFrame == 5 && event.currentTarget.name == "i_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).trig2)) {
				MovieClip(this.root).i_btn.x = 609;
				MovieClip(this.root).i_btn.y = 634;
				scoring.addPoints();
				cSound.play();
				timer.stop();
				countdown = 180;
				MovieClip(this.root).nextBtn.visible = true;
			} else if (MovieClip(root).currentFrame == 6 && event.currentTarget.name == "i_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).trig3)) {
				MovieClip(this.root).i_btn.x = 389;
				MovieClip(this.root).i_btn.y = 635;
				scoring.addPoints();
				cSound.play();
				timer.stop();
				countdown = 180;
				MovieClip(this.root).nextBtn.visible = true;
			} else if (MovieClip(root).currentFrame == 7 && event.currentTarget.name == "e_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).trig4)) {
				MovieClip(this.root).e_btn.x = 392;
				MovieClip(this.root).e_btn.y = 634;
				scoring.addPoints();
				cSound.play();
				countdown = 180;
				timer.stop();
				MovieClip(this.root).nextBtn.visible = true;
			} else if (MovieClip(root).currentFrame == 8 && event.currentTarget.name == "a_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).trig5)) {
				MovieClip(this.root).a_btn.x = 498;
				MovieClip(this.root).a_btn.y = 632;
				scoring.addPoints();
				cSound.play();
				timer.stop();
				countdown = 180;
				MovieClip(this.root).nextBtn.visible = true;
			} else {
				scoring.decPoints();
				wSound.play();
				event.currentTarget.x = getX;
				event.currentTarget.y = getY;
				getX = 0;
				getY = 0;
			}

		}

		public function nextRound(e: MouseEvent): void {
			if (MovieClip(this.root).currentFrame == 4) {
				MovieClip(this.root).a_btn.x = getX;
				MovieClip(this.root).a_btn.y = getY;
			}
			if (MovieClip(this.root).currentFrame == 5) {
				MovieClip(this.root).i_btn.x = getX;
				MovieClip(this.root).i_btn.y = getY;
			}
			if (MovieClip(this.root).currentFrame == 6) {
				MovieClip(this.root).i_btn.x = getX;
				MovieClip(this.root).i_btn.y = getY;
			}
			if (MovieClip(this.root).currentFrame == 7) {
				MovieClip(this.root).e_btn.x = getX;
				MovieClip(this.root).e_btn.y = getY;
			}
			MovieClip(this.root).nextFrame();


		}
		public function gotoDone(e: MouseEvent): void {
			MovieClip(this.root).gotoAndStop(43, "lesson3");
		}

		//timer
		public var countdown: int = 180; // 3 minutes = 180 seconds
		public var timer:Timer = new Timer(1000, countdown);
		public var endTimeSound:Sound = new TimesUpSound();


		public function onTick(event:TimerEvent): void {
			countdown--;
    var minutes:int = Math.floor(countdown / 60);
    var seconds:int = countdown % 60;
    var time:String = minutes + ":" + (seconds < 10 ? "0" : "") + seconds;
			MovieClip(this.root).time_txt.text = time;
		}

		public function onComplete(event: TimerEvent): void {
			MovieClip(this.root).time_txt.text = String("Time's Up!!!");
			endTimeSound.play();
			timer.reset();
			countdown = 180;
			
			scoring.decPoints();
			setTimeout(nextFramee,2000);
			
		}
		public function nextFramee(){
			if(MovieClip(this.root).currentFrame == 8)
			{
				MovieClip(this.root).gotoAndStop(43,"lesson3");
			}else{
				MovieClip(this.root).nextFrame();
			}
			}



	}



}