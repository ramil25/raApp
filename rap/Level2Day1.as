package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;

	public class Level2Day1 extends MovieClip {

		public function Level2Day1() {
		
		}
		
		public function playButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name) {
				case "btnStart_l2_d1":
					MovieClip(root).gotoAndStop(3,"lesson2");
				break;
				case "btnPlay_l2_d1":
					MovieClip(root).gotoAndStop(4,"lesson2");
				break;
				default: 
					trace("Button not found in this frame.");
			}
		}
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		var comboAns:Array = [false, false];

		public function startDrawing(event:MouseEvent):void {
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName("DrawingLayer") as MovieClip;
			
			if(event.currentTarget.name == "cp_pic") {
				comboAns[0] = true;
			}
			else if(event.currentTarget.name == "cp_ans") {
				comboAns[1] = true;
			}
			
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
			
			if(event.currentTarget.name == "cp_pic") {
				comboAns[0] = true;
			}
			else if(event.currentTarget.name == "cp_ans") {
				comboAns[1] = true;
			}
			else {
				comboAns[0] = false;
				comboAns[1] = false;
			}
			
			if(comboAns[0] == true && comboAns[1] == true) 
			{
				comboAns[0] = false;
				comboAns[1] = false;
				
				cSound.play();
				
				switch(MovieClip(root).currentFrame)
				{
					case 4:
						MovieClip(root).gotoAndStop(5,"lesson2");
					break;
					case 5:
						MovieClip(root).gotoAndStop(6,"lesson2");
					break;
					case 6:
						MovieClip(root).gotoAndStop(7,"lesson2");
					break;
					case 7:
						MovieClip(root).gotoAndStop(8,"lesson2");
					break;
					case 8:
						MovieClip(root).gotoAndStop(34,"lesson2");
					break;
					default: 
						trace("Frame wasn't found.");
				}
			}
			else 
			{
				wSound.play();
			}
			
			drawingLayer.graphics.clear();
			stage.removeEventListener(MouseEvent.MOUSE_MOVE, drawLine);
		}

	}

}