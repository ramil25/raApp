package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;


	public class Level2Day3 extends MovieClip {

		public function Level2Day3() {
		
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
							clickedAnswerPics.push('a');
							checkAnswer();
						break;
						case "btn_van":
							MovieClip(root).wrong_van.visible = true;
							clickedAnswerPics.push('b');
							checkAnswer();
						break;
						case "btn_pillow_1":
							MovieClip(root).correct_pillow.visible = true;
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
							clickedAnswerPics.push('a');
							checkAnswer();
						break;
						case "btn_cat_1":
							MovieClip(root).wrong_cat.visible = true;
							clickedAnswerPics.push('b');
							checkAnswer();
						break;
						case "btn_jeep":
							MovieClip(root).correct_jeep.visible = true;
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
							clickedAnswerPics.push('a');
							checkAnswer();
						break;
						case "btn_dog":
							MovieClip(root).wrong_dog.visible = true;
							clickedAnswerPics.push('b');
							checkAnswer();
						break;
						case "btn_bag":
							MovieClip(root).wrong_bag.visible = true;
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
				MovieClip(root).gotoAndStop(1, "lesson2");
			}
		}

	}

}