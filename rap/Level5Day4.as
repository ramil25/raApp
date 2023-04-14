package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;

	public class Level5Day4 extends MovieClip {

		public function Level5Day4() {
		
		}
		
		public function playButtons(e:MouseEvent):void
		{
			if(e.currentTarget.name == "btnStart1") 
			{
				MovieClip(root).gotoAndStop(21,"lesson5");
			}
			if(e.currentTarget.name == "btnPlay1") 
			{
				MovieClip(root).gotoAndStop(22,"lesson5");
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
			
			if(MovieClip(root).currentFrame == 22) {
				correctWord = ['btn_snap', 'btn_spin', 'btn_scooper', 'btn_store', 'btn_sleep'];
				correctCircle = ['correct_snap', 'correct_spin', 'correct_scooper', 'correct_store', 'correct_sleep'];
				sounds = [snap, spin, scooper, store, sleep];
			}
			else if(MovieClip(root).currentFrame == 23) {
				correctWord = ['btn_snail', 'btn_swing', 'btn_slide', 'btn_snake', 'btn_square'];
				correctCircle = ['correct_snail', 'correct_swing', 'correct_slide', 'correct_snake', 'correct_square'];
				sounds = [snail, swing, slide, snake, square];
			}
			else if(MovieClip(root).currentFrame == 24) {
				correctWord = ['btn_sway', 'btn_skate', 'btn_stone', 'btn_slide', 'btn_stock'];
				correctCircle = ['correct_sway', 'correct_skate', 'correct_stone', 'correct_slide', 'correct_stock'];
				sounds = [sway, skate, stone, slide, stock];
			}
			
			for(var i:int = 0; i < correctWord.length; i++) {
				if(event.currentTarget.name == correctWord[i])
				{
					MovieClip(root)[correctCircle[i]].visible = true;
					sounds[i].play();
					correctCount++;
					
					event.currentTarget.removeEventListener(MouseEvent.CLICK, correctWords);
					
					if(MovieClip(root).currentFrame == 22 && correctCount == correctWord.length) {
						correctCount = 0
						MovieClip(root).gotoAndStop(23, "lesson5");
					}
					else if(MovieClip(root).currentFrame == 23 && correctCount == correctWord.length) {
						correctCount = 0
						MovieClip(root).gotoAndStop(24, "lesson5");
					}
					if(MovieClip(root).currentFrame == 24 && correctCount == correctWord.length) {
						correctCount = 0
						MovieClip(root).gotoAndStop(31, "lesson5");
					}
				}
				
			}
		}
		
		// Method for wrong words clicked
		public function wrongWords(event:MouseEvent):void {
			var wrongWord:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 22) {
				wrongWord = ['btn_grass1', 'btn_flower1', 'btn_ribbon1', 'btn_crayon1'];
				sounds = [grass, flower, ribbon, crayon];
			}
			else if(MovieClip(root).currentFrame == 23) {
				wrongWord = ['btn_trap', 'btn_grapes', 'btn_crib', 'btn_truck'];
				sounds = [trap, grapes, crib, truck];
			}
			else if(MovieClip(root).currentFrame == 24) {
				wrongWord = ['btn_brick', 'btn_lock', 'btn_pat', 'btn_dress'];
				sounds = [brick, lock, pat, dress];
			}
			
			for(var i:int = 0; i < wrongWord.length; i++) {
				if(event.currentTarget.name == wrongWord[i])
				{
					sounds[i].play();
				}
				
			}
		}

	}

}