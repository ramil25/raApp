package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;

	public class Level4Day5 extends MovieClip {

		public function Level4Day5() {
		
		}
		
		public function playButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name) {
				case "btnStart_l4_d5":
					MovieClip(root).gotoAndStop(29,"lesson4");
				break;
				case "btnPlay":
					MovieClip(root).gotoAndStop(30,"lesson4");
				break;
				case "btnPlay1":
					MovieClip(root).gotoAndStop(31,"lesson4");
				break;
				default: 
					trace("Button not found in this frame.");
			}
		}
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		var longECombo:Array = [false, false]; // combo array for long e sounds
		var longICombo:Array = [false, false]; // combo array for long i sounds
		
		var isFinish:Array = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; // array for checking if all words has answers
		
		var btnSelected:String = ""; // variable for which button from words is selected

		public function startDrawing(event:MouseEvent):void {
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName("DrawingLayer") as MovieClip;
			
			checkPointers(event.currentTarget.name);
			
			drawingLayer.graphics.lineStyle(5, 0x000000);
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
				
				cSound.play();
				showLine();
			}
			else if(longICombo[0] == true && longICombo[1] == true) 
			{
				longICombo[0] = false;
				longICombo[1] = false;
				
				cSound.play();
				showLine();
			}
			else 
			{
				btnSelected = "";
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
				setTimeout(goToDone, 1000);
			}
		}
		
		function goToDone():void {
			MovieClip(root).gotoAndStop(33, "lesson4");
		}
	}

}