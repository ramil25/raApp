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

	public class Level2Day3 extends MovieClip {
		
		public var scoring:Scoring = new Scoring();

		public function Level2Day3() {
			addChild(scoring);
		}
		
		public function playButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name) {
				case "btnStart_l2_d3":
					MovieClip(root).gotoAndStop(16,"lesson2");
				break;
				case "btnBegin_l2_d3":
					MovieClip(root).gotoAndStop(17,"lesson2");
				break;
				case "btnBegin2_l2_d3":
					MovieClip(root).gotoAndStop(21,"lesson2");
				break;
				default: 
					trace("Button not found in this frame.");
			}
		}
		
		//declare sound class
		public var eagle:EagleSound = new EagleSound();
		public var van:VanSound = new VanSound();
		public var pillow:PillowSound = new PillowSound();
		public var tree:TreeSound = new TreeSound();
		public var cat:CatSound = new CatSound();
		public var jeep:JeepSound = new JeepSound();
		public var coat:CoatSound = new CoatSound();
		public var dog:DogSound = new DogSound();
		public var bag:BagSound = new BagSound();
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		// Method for playing sound
		public function playSounds(event:MouseEvent):void
		{
			switch(event.currentTarget.name)
			{
				case "eagle_1": eagle.play();
				break;
				case "van": van.play();
				break;
				case "pillow_1": pillow.play();
				break;
				case "tree": tree.play();
				break;
				case "cat": cat.play();
				break;
				case "jeep_1": jeep.play();
				break;
				case "coat_1": coat.play();
				break;
				case "dog": dog.play();
				break;
				case "bag": bag.play();
				break;
				default: trace("sound not found");
			}
		}
		
		var clickedAnswerPics:Array = [];
		
		// Method for getting clicked answers in pictures
		public function getAnswer(event:MouseEvent):void {
			switch(MovieClip(root).currentFrame)
			{
				case 17:
					switch(event.currentTarget.name)
					{
						case "btn_eagle":
							MovieClip(root).correct_eagle.visible = true;
							scoring.addPoints();
							cSound.play();
							clickedAnswerPics.push('a');
							checkAnswer();
						break;
						case "btn_van":
							MovieClip(root).wrong_van.visible = true;
							scoring.decPoints();
							wSound.play();
							clickedAnswerPics.push('b');
							checkAnswer();
						break;
						case "btn_pillow_1":
							MovieClip(root).correct_pillow.visible = true;
							scoring.addPoints();
							cSound.play();
							clickedAnswerPics.push('c');
							checkAnswer();
						break;
					}
				break;
				case 18:
					switch(event.currentTarget.name)
					{
						case "btn_tree":
							MovieClip(root).correct_tree.visible = true;
							scoring.addPoints();
							cSound.play();
							clickedAnswerPics.push('a');
							checkAnswer();
						break;
						case "btn_cat_1":
							MovieClip(root).wrong_cat.visible = true;
							scoring.decPoints();
							wSound.play();
							clickedAnswerPics.push('b');
							checkAnswer();
						break;
						case "btn_jeep":
							MovieClip(root).correct_jeep.visible = true;
							scoring.addPoints();
							cSound.play();
							clickedAnswerPics.push('c');
							checkAnswer();
						break;
					}
				break;
					case 19:
					switch(event.currentTarget.name)
					{
						case "btn_coat":
							MovieClip(root).correct_coat.visible = true;
							scoring.addPoints();
							cSound.play();
							clickedAnswerPics.push('a');
							checkAnswer();
						break;
						case "btn_dogg":
							MovieClip(root).wrong_dog.visible = true;
							scoring.decPoints();
							wSound.play();
							clickedAnswerPics.push('b');
							checkAnswer();
						break;
						case "btn_bag":
							MovieClip(root).wrong_bag.visible = true;
							scoring.decPoints();
							wSound.play();
							clickedAnswerPics.push('c');
							checkAnswer();
						break;
					}
				break;
			}
		}
		
		// Method for checking if picture answers is correct
		function checkAnswer():void {
			var correctAnswer:Array = [];
			
			if(MovieClip(root).currentFrame == 17) {
				correctAnswer = ['a', 'c'];
			}
			else if(MovieClip(root).currentFrame == 18) {
				correctAnswer = ['a', 'c'];
			}
			if(MovieClip(root).currentFrame == 19) {
				correctAnswer = ['a'];
			}
			
			var isCorrect:Boolean = true;
			for (var i:int = 0; i < correctAnswer.length; i++) {
				if (clickedAnswerPics.indexOf(correctAnswer[i]) == -1) {
					isCorrect = false;
					break;
				}
			}
			
			// going to next set of pictures in 2 seconds
			if (isCorrect) {
				timer.stop();
				cd = 180;
				clickedAnswerPics.length = 0; // remove or reset array elements
				setTimeout(goToNextPics, 2000);
			}
		}
		
		// Method for going to next picture frames
		function goToNextPics():void {
			if (MovieClip(root).currentFrame == 17) {
				MovieClip(root).gotoAndStop(18, "lesson2");
			}
			else if (MovieClip(root).currentFrame == 18) {
				MovieClip(root).gotoAndStop(19, "lesson2");
			}
			else if (MovieClip(root).currentFrame == 19) {
				MovieClip(root).gotoAndStop(20, "lesson2");
			}
		}
		
		//declare sound class for words
		public var see:SeeSound = new SeeSound();
		public var bad:BadSound = new BadSound();
		public var show:ShowSound = new ShowSound();
		public var beach:BeachSound = new BeachSound();
		public var glow:GlowSound = new GlowSound();
		public var rain:RainSound = new RainSound();
		public var fat:FatSound = new FatSound();
		public var cup:CupSound = new CupSound();
		public var boat:BoatSound = new BoatSound();
		public var arrow:ArrowSound = new ArrowSound();
		public var read:ReadSound = new ReadSound();
		public var car:CarSound = new CarSound();
		public var foam:FoamSound = new FoamSound();
		public var team:TeamSound = new TeamSound();
		public var moon:MoonSound = new MoonSound();
		public var gem:GemSound = new GemSound();
		public var bead:BeadSound = new BeadSound();
		public var flag:FlagSound = new FlagSound();
		public var sea:SeaSound = new SeaSound();
		public var coal:CoalSound = new CoalSound();
		public var bellow:BellowSound = new BellowSound();
		public var meat:MeatSound = new MeatSound();
		public var crab:CrabSound = new CrabSound();
		public var dress:DressSound = new DressSound();
		public var road:RoadSound = new RoadSound();
		public var blue:BlueSound = new BlueSound();
		
		var correctCount:int = 0; // checkpoint counter for number of clicked correct words
		
		// Method for correct words clicked
		public function correctWords(event:MouseEvent):void {
			var correctWord:Array = [];
			var correctCircle:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 21) {
				correctWord = ['btn_see', 'btn_show', 'btn_beach', 'btn_glow', 'btn_boat'];
				correctCircle = ['correct_see', 'correct_show', 'correct_beach', 'correct_glow', 'correct_boat'];
				sounds = [see, show, beach, glow, boat];
			}
			else if(MovieClip(root).currentFrame == 22) {
				correctWord = ['btn_arrow', 'btn_read', 'btn_foam', 'btn_glow1', 'btn_team', 'btn_bead'];
				correctCircle = ['correct_arrow', 'correct_read', 'correct_foam', 'correct_glow1', 'correct_team', 'correct_bead'];
				sounds = [arrow, read, foam, glow, team, bead];
			}
			else if(MovieClip(root).currentFrame == 23) {
				correctWord = ['btn_sea', 'btn_coal', 'btn_bellow', 'btn_meat', 'btn_road'];
				correctCircle = ['correct_sea', 'correct_coal', 'correct_bellow', 'correct_meat', 'correct_road'];
				sounds = [sea, coal, bellow, meat, road];
			}
			
			for(var i:int = 0; i < correctWord.length; i++) {
				if(event.currentTarget.name == correctWord[i])
				{
					scoring.addPoints();
					MovieClip(root)[correctCircle[i]].visible = true;
					sounds[i].play();
					correctCount++;
					
					event.currentTarget.removeEventListener(MouseEvent.CLICK, correctWords);
					
					if(MovieClip(root).currentFrame == 21 && correctCount == correctWord.length) {
						correctCount = 0;
						timer.stop();
						cd = 180;
						MovieClip(root).gotoAndStop(22, "lesson2");
					}
					else if(MovieClip(root).currentFrame == 22 && correctCount == correctWord.length) {
						correctCount = 0;
						timer.stop();
						cd = 180;
						MovieClip(root).gotoAndStop(23, "lesson2");
					}
					else if(MovieClip(root).currentFrame == 23 && correctCount == correctWord.length) {
						correctCount = 0;
						timer.stop();
						cd = 180;
						MovieClip(root).gotoAndStop(34, "lesson2");
					}
				}
				
			}
		}
		
		// Method for wrong words clicked
		public function wrongWords(event:MouseEvent):void {
			var wrongWord:Array = [];
			var sounds:Array = [];
			
			if(MovieClip(root).currentFrame == 21) {
				wrongWord = ['btn_bad', 'btn_rain', 'btn_fat', 'btn_cup'];
				sounds = [bad, rain, fat, cup];
			}
			else if(MovieClip(root).currentFrame == 22) {
				wrongWord = ['btn_car', 'btn_moon', 'btn_gem'];
				sounds = [car, moon, gem];
			}
			else if(MovieClip(root).currentFrame == 23) {
				wrongWord = ['btn_flag', 'btn_crab', 'btn_dress', 'btn_blue'];
				sounds = [flag, crab, dress, blue];
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
			if(MovieClip(root).currentFrame == 17)
			{
				correctCount = 0;
				MovieClip(root).gotoAndStop(18, "lesson2");
			}
			else if(MovieClip(root).currentFrame == 18)
			{
				correctCount = 0;
				MovieClip(root).gotoAndStop(19, "lesson2");
			}
			else if(MovieClip(root).currentFrame == 19)
			{
				correctCount = 0;
				MovieClip(root).gotoAndStop(20, "lesson2");
			}
			else if(MovieClip(root).currentFrame == 21)
			{
				correctCount = 0;
				MovieClip(root).gotoAndStop(22, "lesson2");
			}
			else if(MovieClip(root).currentFrame == 22)
			{
				correctCount = 0;
				MovieClip(root).gotoAndStop(23, "lesson2");
			}
			else if(MovieClip(root).currentFrame == 23)
			{
				correctCount = 0;
				MovieClip(root).gotoAndStop(34, "lesson2");
			}

		}

	}

}