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

	public class Level5Day4 extends MovieClip {
		
		public var scoring:Scoring = new Scoring();

		public function Level5Day4() {
			addChild(scoring);
		}
		
		public function playButtons(e:MouseEvent):void
		{
			if(e.currentTarget.name == "btnStart1") 
			{
				MovieClip(root).gotoAndStop(20,"lesson5");
			}
			if(e.currentTarget.name == "btnPlay1") 
			{
				MovieClip(root).gotoAndStop(21,"lesson5");
			}
			
		}
		
		//declare sound class for words
		public var grass:GrassSound = new GrassSound();
		public var snap:SnapSound = new SnapSound();
		public var flower:FlowerSound = new FlowerSound();
		public var spin:SpinSound = new SpinSound();
		public var scooper:ScooperSound = new ScooperSound();
		public var store:StoreSound = new StoreSound();
		public var ribbon:RibbonSound = new RibbonSound();
		public var sleep:SleepSound = new SleepSound();
		public var crayon:CrayonSound = new CrayonSound();
		public var snail:SnailSound = new SnailSound();
		public var swing:SwingSound = new SwingSound();
		public var trap:TrapSound = new TrapSound();
		public var grapes:GrapesSound = new GrapesSound();
		public var crib:CribSound = new CribSound();
		public var snake:SnakeSound = new SnakeSound();
		public var truck:TruckSound = new TruckSound();
		public var square:SquareSound = new SquareSound();
		public var brick:BrickSound = new BrickSound();
		public var sway:SwaySound = new SwaySound();
		public var skate:SkateSound = new SkateSound();
		public var lock:LockSound = new LockSound();
		public var stone:StoneSound = new StoneSound();
		public var pat:PatSound = new PatSound();
		public var slide:SlideSound = new SlideSound();
		public var stock:StockSound = new StockSound();
		public var dress:DressSound = new DressSound();
		
		var correctCount:int = 0; // checkpoint counter for number of clicked correct words
		
		// Method for correct words clicked
		public function correctWords(event:MouseEvent):void {
			var correctWord:Array = [];
			var correctCircle:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 21) {
				correctWord = ['btn_snap', 'btn_spin', 'btn_scooper', 'btn_store', 'btn_sleep'];
				correctCircle = ['correct_snap', 'correct_spin', 'correct_scooper', 'correct_store', 'correct_sleep'];
				sounds = [snap, spin, scooper, store, sleep];
			}
			else if(MovieClip(root).currentFrame == 22) {
				correctWord = ['btn_snail', 'btn_swing', 'btn_slide', 'btn_snake', 'btn_square'];
				correctCircle = ['correct_snail', 'correct_swing', 'correct_slide', 'correct_snake', 'correct_square'];
				sounds = [snail, swing, slide, snake, square];
			}
			else if(MovieClip(root).currentFrame == 23) {
				correctWord = ['btn_sway', 'btn_skate', 'btn_stone', 'btn_slide', 'btn_stock'];
				correctCircle = ['correct_sway', 'correct_skate', 'correct_stone', 'correct_slide', 'correct_stock'];
				sounds = [sway, skate, stone, slide, stock];
			}
			
			for(var i:int = 0; i < correctWord.length; i++) {
				if(event.currentTarget.name == correctWord[i])
				{
					MovieClip(root)[correctCircle[i]].visible = true;
					sounds[i].play();
					scoring.addPoints();
					correctCount++;
					
					event.currentTarget.removeEventListener(MouseEvent.CLICK, correctWords);
					
					if(MovieClip(root).currentFrame == 21 && correctCount == correctWord.length) {
						correctCount = 0;
						timer.stop();
						cd = 180;
						MovieClip(root).gotoAndStop(22, "lesson5");
					}
					else if(MovieClip(root).currentFrame == 22 && correctCount == correctWord.length) {
						correctCount = 0;
						timer.stop();
						cd = 180;
						MovieClip(root).gotoAndStop(23, "lesson5");
					}
					else if(MovieClip(root).currentFrame == 23 && correctCount == correctWord.length) {
						correctCount = 0;
						timer.stop();
						cd = 180;
						scoring.addScore("L5D4");
						MovieClip(root).gotoAndStop(30, "lesson5");
					}
				}
				
			}
		}
		
		// Method for wrong words clicked
		public function wrongWords(event:MouseEvent):void {
			var wrongWord:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 21) {
				wrongWord = ['btn_grass1', 'btn_flower1', 'btn_ribbon1', 'btn_crayon1'];
				sounds = [grass, flower, ribbon, crayon];
			}
			else if(MovieClip(root).currentFrame == 22) {
				wrongWord = ['btn_trap', 'btn_grapes', 'btn_crib', 'btn_truck'];
				sounds = [trap, grapes, crib, truck];
			}
			else if(MovieClip(root).currentFrame == 23) {
				wrongWord = ['btn_brick', 'btn_lock', 'btn_pat', 'btn_dress'];
				sounds = [brick, lock, pat, dress];
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
			if(MovieClip(root).currentFrame == 21)
			{
				MovieClip(root).gotoAndStop(22, "lesson5");
			}
			else if(MovieClip(root).currentFrame == 22)
			{
				MovieClip(root).gotoAndStop(23, "lesson5");
			}
			else if(MovieClip(root).currentFrame == 23)
			{
				scoring.addScore("L5D4");
				MovieClip(root).gotoAndStop(30, "lesson5");
			}
		}

	}

}