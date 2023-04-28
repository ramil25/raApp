package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import Scoring;

	public class Level4Day5 extends MovieClip {
		
		public var scoring:Scoring = new Scoring();

		public function Level4Day5() {
			addChild(scoring);
		}
		
		public function playButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name) {
				case "btnStart_l4_d5":
					MovieClip(root).gotoAndStop(29,"lesson4");
				break;
				case "btnPlay":
					SoundMixer.stopAll();
					MovieClip(root).gotoAndStop(30,"lesson4");
				break;
				case "btnPlay1":
					SoundMixer.stopAll();
					MovieClip(root).gotoAndStop(31,"lesson4");
				break;
				default: 
					trace("Button not found in this frame.");
			}
		}
		
		public var robot1Sound: Sound = new RB1L4D2Sound();
		public var robot2Sound: Sound = new RobotL4D5Sound();		
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		var longECombo:Array = [false, false]; // combo array for long e sounds
		var longICombo:Array = [false, false]; // combo array for long i sounds
		
		var isFinish:Array = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; // array for checking if all words has answers
		
		var btnSelected:String = ""; // variable for which button from words is selected

		public function startDrawing(event:MouseEvent):void {
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName("DrawingLayer") as MovieClip;
			
			checkPointers(event.currentTarget.name);
			
			drawingLayer.graphics.lineStyle(20, 0x000000);
			drawingLayer.graphics.moveTo(event.stageX, event.stageY);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, drawLine);
		}

		public function drawLine(event:MouseEvent):void {
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName("DrawingLayer") as MovieClip;
			drawingLayer.graphics.lineTo(event.stageX, event.stageY);
		}

		public function stopDrawing(event:MouseEvent):void {
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName("DrawingLayer") as MovieClip;
			
			checkPointers(event.currentTarget.name);
			
			if(longECombo[0] == true && longECombo[1] == true) 
			{
				longECombo[0] = false;
				longECombo[1] = false;
				
				scoring.addPoints();
				cSound.play();
				showLine();
			}
			else if(longICombo[0] == true && longICombo[1] == true) 
			{
				longICombo[0] = false;
				longICombo[1] = false;
				
				scoring.addPoints();
				cSound.play();
				showLine();
			}
			else 
			{
				btnSelected = "";
				scoring.decPoints();
				wSound.play();
			}
			
			drawingLayer.graphics.clear();
			stage.removeEventListener(MouseEvent.MOUSE_MOVE, drawLine);
			
			isComplete();
		}
		
		function checkPointers(pointer:String):void 
		{
			if(pointer == "long_e") {
				longECombo[0] = true;
			}
			else if(pointer == "long_i") {
				longICombo[0] = true;
			}
			else if(pointer == "pony" || pointer == "jelly" || pointer == "snowy" || pointer == "silly"
				|| pointer == "carry" || pointer == "rocky" || pointer == "daisy")
			{
				btnSelected = pointer;
				longECombo[1] = true;
			}
			else if(pointer == "spy" || pointer == "dry" || pointer == "tryy")
			{
				btnSelected = pointer;
				longICombo[1] = true;
			}
		}
		
		function showLine():void
		{
			switch(btnSelected)
			{
				case "pony":
					MovieClip(root).pony_line.visible = true;
					isFinish[0] = 1;
				break;
				case "jelly":
					MovieClip(root).jelly_line.visible = true;
					isFinish[1] = 1;
				break;
				case "snowy":
					MovieClip(root).snowy_line.visible = true;
					isFinish[2] = 1;
				break;
				case "silly":
					MovieClip(root).silly_line.visible = true;
					isFinish[3] = 1;
				break;
				case "carry":
					MovieClip(root).carry_line.visible = true;
					isFinish[4] = 1;
				break;
				case "rocky":
					MovieClip(root).rocky_line.visible = true;
					isFinish[5] = 1;
				break;
				case "daisy":
					MovieClip(root).daisy_line.visible = true;
					isFinish[6] = 1;
				break;
				case "spy":
					MovieClip(root).spy_line.visible = true;
					isFinish[7] = 1;
				break;
				case "dry":
					MovieClip(root).dry_line.visible = true;
					isFinish[8] = 1;
				break;
				case "tryy":
					MovieClip(root).try_line.visible = true;
					isFinish[9] = 1;
				break;
				default:
					trace("No correct line was found");
			}
		}
		
		// Method that check if all words has correct answer
		function isComplete():void {
			var complete:Boolean = true;
			
			for(var i:int = 0; i < isFinish.length; i++) {
				if(isFinish[i] != 1)
				{
					complete = false;
					break;
				}
			}
			
			if(complete)
			{
				for(var j: int = 0; j < isFinish.length; j++)
				{
					isFinish[j] = 0; // reset all array elements
				}
			
				timer.stop();
				cd = 180;
				setTimeout(goToDone, 1000);
			}
		}
		
		function goToDone():void {
			scoring.addScore("L4D5");
			MovieClip(root).gotoAndStop(33, "lesson4");
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
			if(MovieClip(root).currentFrame == 31)
			{
				scoring.addScore("L4D5");
				MovieClip(root).gotoAndStop(33, "lesson4");
			}
		}
	}

}