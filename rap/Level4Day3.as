package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;

	public class Level4Day3 extends MovieClip {

		public function Level4Day3() {
		
		}
		
		public function playButtons(e:MouseEvent):void
		{
			if(e.currentTarget.name == "btnStart_l4_d3") 
			{
				MovieClip(root).gotoAndStop(20,"lesson4");
			}
			if(e.currentTarget.name == "btn_play") 
			{
				MovieClip(root).gotoAndStop(21,"lesson4");
			}
			
		}
		
		//declare sound class for words
		public var cat:CatSound = new CatSound();
		public var cry:CrySound = new CrySound();
		public var rocky:RockySound = new RockySound();
		public var rat:RatSound = new RatSound();
		public var spy:SpySound = new SpySound();
		public var raise:RaiseSound = new RaiseSound();
		public var cake:CakeSound = new CakeSound();
		public var jelly:JellySound = new JellySound();
		public var funny:FunnySound = new FunnySound();
		public var pencil:PencilSound = new PencilSound();
		public var happy:HappySound = new HappySound();
		public var baby:BabySound = new BabySound();
		public var pony:PonySound = new PonySound();
		public var glow:GlowSound = new GlowSound();
		public var book:BookSound = new BookSound();
		public var dog:DogSound = new DogSound();
		public var fly:FlySound = new FlySound();
		public var sunny:SunnySound = new SunnySound();
		public var puppy:PuppySound = new PuppySound();
		public var fish:FishSound = new FishSound();
		public var mom:MomSound = new MomSound();
		public var bear:BearSound = new BearSound();
		public var sTry:TrySound = new TrySound();
		public var cook:CookSound = new CookSound();
		public var silly:SillySound = new SillySound();
		public var dry:DrySound = new DrySound();
		
		var correctCount:int = 0; // checkpoint counter for number of clicked correct words
		
		// Method for correct words clicked
		public function correctWords(event:MouseEvent):void {
			var correctWord:Array = [];
			var correctCircle:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 21) {
				correctWord = ['btn_cry', 'btn_rocky', 'btn_spy', 'btn_jelly', 'btn_funny'];
				correctCircle = ['correct_cry', 'correct_rocky', 'correct_spy', 'correct_jelly', 'correct_funny'];
				sounds = [cry, rocky, spy, jelly, funny];
			}
			else if(MovieClip(root).currentFrame == 22) {
				correctWord = ['btn_happy', 'btn_baby', 'btn_pony', 'btn_fly', 'btn_sunny'];
				correctCircle = ['correct_happy', 'correct_baby', 'correct_pony', 'correct_fly', 'correct_sunny'];
				sounds = [happy, baby, pony, fly, sunny];
			}
			else if(MovieClip(root).currentFrame == 23) {
				correctWord = ['btn_puppy', 'btn_try', 'btn_silly', 'btn_fly', 'btn_dry'];
				correctCircle = ['correct_puppy', 'correct_try', 'correct_silly', 'correct_fly', 'correct_dry'];
				sounds = [puppy, sTry, silly, fly, dry];
			}
			
			for(var i:int = 0; i < correctWord.length; i++) {
				if(event.currentTarget.name == correctWord[i])
				{
					MovieClip(root)[correctCircle[i]].visible = true;
					sounds[i].play();
					correctCount++;
					
					event.currentTarget.removeEventListener(MouseEvent.CLICK, correctWords);
					
					if(MovieClip(root).currentFrame == 21 && correctCount == correctWord.length) {
						correctCount = 0
						MovieClip(root).gotoAndStop(22, "lesson4");
					}
					else if(MovieClip(root).currentFrame == 22 && correctCount == correctWord.length) {
						correctCount = 0
						MovieClip(root).gotoAndStop(23, "lesson4");
					}
					if(MovieClip(root).currentFrame == 23 && correctCount == correctWord.length) {
						correctCount = 0
						MovieClip(root).gotoAndStop(1, "lesson4");
					}
				}
				
			}
		}
		
		// Method for wrong words clicked
		public function wrongWords(event:MouseEvent):void {
			var wrongWord:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 21) {
				wrongWord = ['btn_cat', 'btn_rat', 'btn_raise', 'btn_cake'];
				sounds = [cat, rat, raise, cake];
			}
			else if(MovieClip(root).currentFrame == 22) {
				wrongWord = ['btn_pencil', 'btn_glow', 'btn_book', 'btn_dog'];
				sounds = [pencil, glow, book, dog];
			}
			else if(MovieClip(root).currentFrame == 23) {
				wrongWord = ['btn_fish', 'btn_mom', 'btn_bear', 'btn_cook'];
				sounds = [fish, mom, bear, cook];
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