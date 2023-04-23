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

	public class Level5Day2 extends MovieClip {
		
		public var scoring:Scoring = new Scoring();

		public function Level5Day2() {
			addChild(scoring);
		}
		
		public function playButtons(e:MouseEvent):void
		{
			if(e.currentTarget.name == "btnStart") 
			{
				MovieClip(root).gotoAndStop(9,"lesson5");
			}
			if(e.currentTarget.name == "btnPlay") 
			{
				MovieClip(root).gotoAndStop(10,"lesson5");
			}
			
		}
		
		//declare sound class for words
		public var grass:GrassSound = new GrassSound();
		public var crab:CrabSound = new CrabSound();
		public var flower:FlowerSound = new FlowerSound();
		public var banana:BananaSound = new BananaSound();
		public var train:TrainSound = new TrainSound();
		public var raise:RaiseSound = new RaiseSound();
		public var ribbon:RibbonSound = new RibbonSound();
		public var crown:CrownSound = new CrownSound();
		public var crayon:CrayonSound = new CrayonSound();
		public var jacket:JacketSound = new JacketSound();
		public var frame:FrameSound = new FrameSound();
		public var rock:RockSound = new RockSound();
		public var grapes:GrapesSound = new GrapesSound();
		public var crib:CribSound = new CribSound();
		public var clock:ClockSound = new ClockSound();
		public var truck:TruckSound = new TruckSound();
		public var funny:FunnySound = new FunnySound();
		public var brick:BrickSound = new BrickSound();
		public var sway:SwaySound = new SwaySound();
		public var broom:BroomSound = new BroomSound();
		public var lock:LockSound = new LockSound();
		public var grand:GrandSound = new GrandSound();
		public var pat:PatSound = new PatSound();
		public var bright:BrightSound = new BrightSound();
		public var sock:SockSound = new SockSound();
		public var dress:DressSound = new DressSound();
		public var trap:TrapSound = new TrapSound();
		
		var correctCount:int = 0; // checkpoint counter for number of clicked correct words
		
		// Method for correct words clicked
		public function correctWords(event:MouseEvent):void {
			var correctWord:Array = [];
			var correctCircle:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 10) {
				correctWord = ['btn_grass', 'btn_crab', 'btn_train', 'btn_crown', 'btn_crayon'];
				correctCircle = ['correct_grass', 'correct_crab', 'correct_train', 'correct_crown', 'correct_crayon'];
				sounds = [grass, crab, train, crown, crayon];
			}
			else if(MovieClip(root).currentFrame == 11) {
				correctWord = ['btn_frame', 'btn_trap', 'btn_grapes', 'btn_crib', 'btn_truck'];
				correctCircle = ['correct_frame', 'correct_trap', 'correct_grapes', 'correct_crib', 'correct_truck'];
				sounds = [frame, trap, grapes, crib, truck];
			}
			else if(MovieClip(root).currentFrame == 12) {
				correctWord = ['btn_brick', 'btn_broom', 'btn_grand', 'btn_bright', 'btn_dress'];
				correctCircle = ['correct_brick', 'correct_broom', 'correct_grand', 'correct_bright', 'correct_dress'];
				sounds = [brick, broom, grand, bright, dress];
			}
			
			for(var i:int = 0; i < correctWord.length; i++) {
				if(event.currentTarget.name == correctWord[i])
				{
					MovieClip(root)[correctCircle[i]].visible = true;
					sounds[i].play();
					scoring.addPoints();
					correctCount++;
					
					event.currentTarget.removeEventListener(MouseEvent.CLICK, correctWords);
					
					if(MovieClip(root).currentFrame == 10 && correctCount == correctWord.length) {
						correctCount = 0;
						timer.stop();
						cd = 180;
						MovieClip(root).gotoAndStop(11, "lesson5");
					}
					else if(MovieClip(root).currentFrame == 11 && correctCount == correctWord.length) {
						correctCount = 0;
						timer.stop();
						cd = 180;
						MovieClip(root).gotoAndStop(12, "lesson5");
					}
					else if(MovieClip(root).currentFrame == 12 && correctCount == correctWord.length) {
						correctCount = 0;
						timer.stop();
						cd = 180;
						MovieClip(root).gotoAndStop(30, "lesson5");
					}
				}
				
			}
		}
		
		// Method for wrong words clicked
		public function wrongWords(event:MouseEvent):void {
			var wrongWord:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 10) {
				wrongWord = ['btn_flower', 'btn_banana', 'btn_raise', 'btn_ribbon'];
				sounds = [flower, banana, raise, ribbon];
			}
			else if(MovieClip(root).currentFrame == 11) {
				wrongWord = ['btn_jacket', 'btn_rock', 'btn_clock', 'btn_funny'];
				sounds = [jacket, rock, clock, funny];
			}
			else if(MovieClip(root).currentFrame == 12) {
				wrongWord = ['btn_sway', 'btn_lock', 'btn_pat', 'btn_sock'];
				sounds = [sway, lock, pat, sock];
			}
			
			for(var i:int = 0; i < wrongWord.length; i++) {
				if(event.currentTarget.name == wrongWord[i])
				{
					scoring.decPoints();
					sounds[i].play();
				}
				
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
			if(MovieClip(root).currentFrame == 10)
			{
				MovieClip(root).gotoAndStop(11, "lesson5");
			}
			else if(MovieClip(root).currentFrame == 11)
			{
				MovieClip(root).gotoAndStop(12, "lesson5");
			}
			else if(MovieClip(root).currentFrame == 12)
			{
				MovieClip(root).gotoAndStop(30, "lesson5");
			}
		}
	}

}