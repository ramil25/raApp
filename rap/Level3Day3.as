package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	
	public class Level3Day3 extends MovieClip{

		public function Level3Day3() {
			// constructor code
		}
		//buttons
		public function playButtons(e:MouseEvent):void
		{
			if(e.currentTarget.name == "btnStart_l3_d3") 
			{
				MovieClip(root).gotoAndStop(22,"lesson3");
			}
			if(e.currentTarget.name == "btn_play") 
			{
				MovieClip(root).gotoAndStop(23,"lesson3");
			}
			
		}
		//sounds objects
		public var spraySound:Sound = new SpraySound();
		public var haySound:Sound = new HaySound();
		public var showSound:Sound = new ShowSound();
		public var satSound:Sound = new SatSound();
		public var paySound:Sound = new PaySound();
		public var raiseSound:Sound = new RaiseSound();
		public var catSound:Sound = new CatSound();
		public var cupSound:Sound = new CupSound();
		public var saySound:Sound = new SaySound();
		
		public var pillowSound:Sound = new PillowSound();
		public var maySound:Sound = new MaySound();
		public var pailSound:Sound = new PailSound();
		public var graySound:Sound = new GraySound();
		public var glowSound:Sound = new GlowSound();
		public var teamSound:Sound = new TeamSound();
		public var canSound:Sound = new CanSound();
		public var rainSound:Sound = new RainSound();
		public var veinsSound:Sound = new VeinsSound();
		
		public var eightySound:Sound = new EightySound();
		public var seaSound:Sound = new SeaSound();
		public var claimSound:Sound = new ClaimSound();
		public var bellowSound:Sound = new BellowSound();
		public var chainSound:Sound = new ChainSound();
		public var crabSound:Sound = new CrabSound();
		public var staySound:Sound = new StaySound();
		public var roadSound:Sound = new RoadSound();
		public var sailSound:Sound = new SailSound();
		
		var correctCount:int = 0; // checkpoint counter for number of clicked correct words
		
		// Method for correct words clicked
		public function correctWords(event:MouseEvent):void {
			var correctWord:Array = [];
			var correctCircle:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 23) {
				correctWord = ['btn_spray', 'btn_hay', 'btn_pay', 'btn_raise', 'btn_say'];
				correctCircle = ['correct_spray', 'correct_hay', 'correct_pay', 'correct_raise', 'correct_say'];
				sounds = [spraySound, haySound, paySound, raiseSound, saySound];
			}
			else if(MovieClip(root).currentFrame == 24) {
				correctWord = ['btn_may', 'btn_pail', 'btn_gray', 'btn_team', 'btn_rain','btn_veins'];
				correctCircle = ['correct_may', 'correct_pail', 'correct_gray', 'correct_team', 'correct_rain','correct_veins'];
				sounds = [maySound, pailSound, graySound, teamSound, rainSound,veinsSound];
			}
		
			else if(MovieClip(root).currentFrame == 25) {
				correctWord = ['btn_eighty', 'btn_sea', 'btn_claim', 'btn_chain', 'btn_stay','btn_sail'];
				correctCircle = ['correct_eighty', 'correct_sea', 'correct_claim', 'correct_chain', 'correct_stay','correct_sail'];
				sounds = [eightySound, seaSound, claimSound, chainSound, staySound,sailSound];
			}
			
			for(var i:int = 0; i < correctWord.length; i++) {
				if(event.currentTarget.name == correctWord[i])
				{
					MovieClip(root)[correctCircle[i]].visible = true;
					sounds[i].play();
					correctCount++;
					
					event.currentTarget.removeEventListener(MouseEvent.CLICK, correctWords);
					
					if(MovieClip(root).currentFrame == 23 && correctCount == correctWord.length) {
						correctCount = 0
						MovieClip(root).gotoAndStop(24, "lesson3");
					}
					
					else if(MovieClip(root).currentFrame == 24 && correctCount == correctWord.length) {
						correctCount = 0
						MovieClip(root).gotoAndStop(25, "lesson3");
					}
					if(MovieClip(root).currentFrame == 25 && correctCount == correctWord.length) {
						correctCount = 0
						MovieClip(root).gotoAndStop(1, "lesson3");
					}
				}
				
			}
		}
		
		// Method for wrong words clicked
		public function wrongWords(event:MouseEvent):void {
			var wrongWord:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 23) {
				wrongWord = ['btn_show', 'btn_sat', 'btn_cat', 'btn_cup'];
				sounds = [showSound, satSound, catSound, cupSound];
			}
			else if(MovieClip(root).currentFrame == 24) {
				wrongWord = ['btn_pillow', 'btn_glow', 'btn_can'];
				sounds = [pillowSound, glowSound, canSound];
			}
			else if(MovieClip(root).currentFrame == 25) {
				wrongWord = ['btn_bellow', 'btn_crab', 'btn_road'];
				sounds = [bellowSound, crabSound, roadSound];
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
