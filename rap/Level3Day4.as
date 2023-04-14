package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import flash.media.Sound;
	import flash.geom.Point;

	public class Level3Day4 extends MovieClip {

		public function Level3Day4() {
		
		}
		
		public function playButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name) {
				case "btnStart_l3_d4":
					MovieClip(root).gotoAndStop(28,"lesson3");
				break;
				case "btnPlay_l3_d4":
					MovieClip(root).gotoAndStop(29,"lesson3");
				break;
				default: 
					trace("Button not found in this frame.");
			}
		}
		
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		
		var isComplete1:Array = [0, 0, 0]; // array for checking if words are highlighted in first highlight quiz
		var isComplete2:Array = [0, 0]; // array for checking if words are highlighted in second highlight quiz
		var isComplete3:Array = [0, 0]; // array for checking if words are highlighted in third highlight quiz
		var isComplete4:Array = [0, 0, 0]; // array for checking if words are highlighted in fourth highlight quiz
		var isComplete5:Array = [0, 0, 0, 0]; // array for checking if words are highlighted in fifth highlight quiz
		var isComplete6:Array = [0, 0, 0, 0, 0, 0, 0]; // array for checking if words are highlighted in sixth highlight quiz
		var isComplete7:Array = [0, 0, 0, 0]; // array for checking if words are highlighted in seventh highlight quiz

		public function startDrawing(event:MouseEvent):void {
			var currentLayer:String = "";
			switch(MovieClip(root).currentFrame)
			{
				case 29:
					currentLayer = "drawing_layer"
				break;
				case 30:
					currentLayer = "drawing_layer1"
				break;
				case 31:
					currentLayer = "drawing_layer2"
				break;
				case 32:
					currentLayer = "drawing_layer3"
				break;
				case 33:
					currentLayer = "drawing_layer4"
				break;
				case 34:
					currentLayer = "drawing_layer5"
				break;
				case 35:
					currentLayer = "drawing_layer6"
				break;
				default:
					trace("No current layer");
			}
			
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName(currentLayer) as MovieClip;
			
			drawingLayer.graphics.lineStyle(40, 0xFFFF00, 0.5);
			drawingLayer.graphics.moveTo(event.stageX, event.stageY);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, drawLine);
		}

		public function drawLine(event:MouseEvent):void {
			var currentLayer:String = "";
			switch(MovieClip(root).currentFrame)
			{
				case 29:
					currentLayer = "drawing_layer"
				break;
				case 30:
					currentLayer = "drawing_layer1"
				break;
				case 31:
					currentLayer = "drawing_layer2"
				break;
				case 32:
					currentLayer = "drawing_layer3"
				break;
				case 33:
					currentLayer = "drawing_layer4"
				break;
				case 34:
					currentLayer = "drawing_layer5"
				break;
				case 35:
					currentLayer = "drawing_layer6"
				break;
				default:
					trace("No current layer");
			}
			
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName(currentLayer) as MovieClip;
			drawingLayer.graphics.lineTo(event.stageX, event.stageY);
		}

		public function stopDrawing(event:MouseEvent):void {
			var currentLayer:String = "";
			switch(MovieClip(root).currentFrame)
			{
				case 29:
					currentLayer = "drawing_layer"
				break;
				case 30:
					currentLayer = "drawing_layer1"
				break;
				case 31:
					currentLayer = "drawing_layer2"
				break;
				case 32:
					currentLayer = "drawing_layer3"
				break;
				case 33:
					currentLayer = "drawing_layer4"
				break;
				case 34:
					currentLayer = "drawing_layer5"
				break;
				case 35:
					currentLayer = "drawing_layer6"
				break;
				default:
					trace("No current layer");
			}
			
			var drawingLayer:MovieClip = MovieClip(parent).getChildByName(currentLayer) as MovieClip;
			
			// declare correct highlightable words
			var cp1:MovieClip = MovieClip(parent).getChildByName("cp1") as MovieClip;
			var cp2:MovieClip = MovieClip(parent).getChildByName("cp2") as MovieClip;
			var cp3:MovieClip = MovieClip(parent).getChildByName("cp3") as MovieClip;
			var cp4:MovieClip = MovieClip(parent).getChildByName("cp4") as MovieClip;
			var cp5:MovieClip = MovieClip(parent).getChildByName("cp5") as MovieClip;
			var cp6:MovieClip = MovieClip(parent).getChildByName("cp6") as MovieClip;
			var cp7:MovieClip = MovieClip(parent).getChildByName("cp7") as MovieClip;
			var cp8:MovieClip = MovieClip(parent).getChildByName("cp8") as MovieClip;
			var cp9:MovieClip = MovieClip(parent).getChildByName("cp9") as MovieClip;
			var cp10:MovieClip = MovieClip(parent).getChildByName("cp10") as MovieClip;
			var cp11:MovieClip = MovieClip(parent).getChildByName("cp11") as MovieClip;
			var cp12:MovieClip = MovieClip(parent).getChildByName("cp12") as MovieClip;
			var cp13:MovieClip = MovieClip(parent).getChildByName("cp13") as MovieClip;
			var cp14:MovieClip = MovieClip(parent).getChildByName("cp14") as MovieClip;
			var cp15:MovieClip = MovieClip(parent).getChildByName("cp15") as MovieClip;
			var cp16:MovieClip = MovieClip(parent).getChildByName("cp16") as MovieClip;
			var cp17:MovieClip = MovieClip(parent).getChildByName("cp17") as MovieClip;
			var cp18:MovieClip = MovieClip(parent).getChildByName("cp18") as MovieClip;
			var cp19:MovieClip = MovieClip(parent).getChildByName("cp19") as MovieClip;
			var cp20:MovieClip = MovieClip(parent).getChildByName("cp20") as MovieClip;
			var cp21:MovieClip = MovieClip(parent).getChildByName("cp21") as MovieClip;
			var cp22:MovieClip = MovieClip(parent).getChildByName("cp22") as MovieClip;
			var cp23:MovieClip = MovieClip(parent).getChildByName("cp23") as MovieClip;
			var cp24:MovieClip = MovieClip(parent).getChildByName("cp24") as MovieClip;
			var cp25:MovieClip = MovieClip(parent).getChildByName("cp25") as MovieClip;
	
			var endPoint:Point = new Point(event.stageX, event.stageY); // end point of drawing
			
			// check if highlighted word is correct
			if(MovieClip(root).currentFrame == 29 && cp1.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_jay.visible = true;
				isComplete1[0] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 29 && cp2.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_ray.visible = true;
				isComplete1[1] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 29 && cp3.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_play.visible = true;
				isComplete1[2] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 30 && cp4.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_day.visible = true;
				isComplete2[0] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 30 && cp5.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_hay.visible = true;
				isComplete2[1] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 31 && cp6.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_day1.visible = true;
				isComplete3[0] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 31 && cp7.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_rain.visible = true;
				isComplete3[1] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 32 && cp8.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_jay1.visible = true;
				isComplete4[0] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 32 && cp9.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_ray1.visible = true;
				isComplete4[1] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 32 && cp10.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_play1.visible = true;
				isComplete4[2] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 33 && cp11.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_jay2.visible = true;
				isComplete5[0] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 33 && cp12.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_stay.visible = true;
				isComplete5[1] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 33 && cp13.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_play2.visible = true;
				isComplete5[2] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 33 && cp14.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_ray2.visible = true;
				isComplete5[3] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 34 && cp15.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_jay3.visible = true;
				isComplete6[0] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 34 && cp16.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_stay2.visible = true;
				isComplete6[1] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 34 && cp17.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_play3.visible = true;
				isComplete6[2] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 34 && cp18.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_say.visible = true;
				isComplete6[3] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 34 && cp19.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_okay.visible = true;
				isComplete6[4] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 34 && cp20.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_ray3.visible = true;
				isComplete6[5] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 34 && cp21.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_say1.visible = true;
				isComplete6[6] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 35 && cp22.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_jay4.visible = true;
				isComplete7[0] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 35 && cp23.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_ray4.visible = true;
				isComplete7[1] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 35 && cp24.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_stayed.visible = true;
				isComplete7[2] = 1;
				cSound.play();
			}
			else if(MovieClip(root).currentFrame == 35 && cp25.hitTestPoint(endPoint.x, endPoint.y)) {
				MovieClip(root).h_played.visible = true;
				isComplete7[3] = 1;
				cSound.play();
			}
			else {
				wSound.play();
			}
			
			// check if all words in current frame is highlighted
			switch(MovieClip(root).currentFrame)
			{
				case 29:
					if(isComplete1[0] == 1 && isComplete1[1] == 1 && isComplete1[2] == 1)
					{
						MovieClip(root).btn_next.visible = true;
					}
				break;
				case 30:
					if(isComplete2[0] == 1 && isComplete2[1] == 1)
					{
						MovieClip(root).btn_next.visible = true;
					}
				break;	
				case 31:
					if(isComplete3[0] == 1 && isComplete3[1] == 1)
					{
						MovieClip(root).btn_next.visible = true;
					}
				break;
				case 32:
					if(isComplete4[0] == 1 && isComplete4[1] == 1 && isComplete4[2] == 1)
					{
						MovieClip(root).btn_next.visible = true;
					}
				break;
				case 33:
					if(isComplete5[0] == 1 && isComplete5[1] == 1 && isComplete5[2] == 1 && isComplete5[3] == 1)
					{
						MovieClip(root).btn_next.visible = true;
					}
				break;
				case 34:
					if(isComplete6[0] == 1 && isComplete6[1] == 1 && isComplete6[2] == 1 && isComplete6[3] == 1 
						&& isComplete6[4] == 1 && isComplete6[5] == 1 && isComplete6[6] == 1)
					{
						MovieClip(root).btn_next.visible = true;
					}
				break;
				case 35:
					if(isComplete7[0] == 1 && isComplete7[1] == 1 && isComplete7[2] == 1 && isComplete7[3] == 1)
					{
						setTimeout(goToDone, 1000);
					}
				break;
				default:
					trace("No frame was found");
			}
					
			drawingLayer.graphics.clear();
			stage.removeEventListener(MouseEvent.MOUSE_MOVE, drawLine);
		}
		
		// function to go next frame
		function goToNext(e:MouseEvent):void {
			switch(MovieClip(root).currentFrame)
			{
				case 29:
					MovieClip(root).gotoAndStop("30", "lesson3");
				break;	
				case 30:
					MovieClip(root).gotoAndStop("31", "lesson3");
				break;
				case 31:
					MovieClip(root).gotoAndStop("32", "lesson3");
				break;
				case 32:
					MovieClip(root).gotoAndStop("33", "lesson3");
				break;
				case 33:
					MovieClip(root).gotoAndStop("34", "lesson3");
				break;
				case 34:
					MovieClip(root).gotoAndStop("35", "lesson3");
				break;
				default:
					trace("No frame was found");
			}
		}
		
		function goToDone():void {
			MovieClip(root).gotoAndStop(43, "lesson3");
		}
		
	}

}