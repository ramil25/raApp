package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.utils.Timer;
	import flash.utils.setTimeout;
	import flash.events.TimerEvent;

	public class Level4Day4 extends MovieClip {

		public function Level4Day4() {
			// constructor code
		}
		public function playButtons(e: MouseEvent): void {
			switch (e.currentTarget.name) {
				case "btnStart_l4_d4":
					MovieClip(root).gotoAndStop(25, "lesson4");
					break;
				case "btnPlay":
					MovieClip(root).gotoAndStop(26, "lesson4");
					break;
				case "btnPlay1":
					MovieClip(root).gotoAndStop(27, "lesson4");
					break;
				default: 
					trace("No button was found.");
			}

		}
		//drag and drop
		public var getX: int = 0;
		public var getY: int = 0;
		public var cSound: Sound = new CorrectSound();
		public var wSound: Sound = new WrongSound();
		public var btnName: String = "";
		
		var wordCounter:int = 9; // word remaining counter
		
		public function startDragg(event: MouseEvent): void {
			getX = event.currentTarget.x;
			getY = event.currentTarget.y;
			btnName + event.currentTarget.name;
			event.currentTarget.startDrag();
		}

		public function stopDragg(event: MouseEvent): void {
			event.currentTarget.stopDrag();
			var btn_name = event.currentTarget.name;
			
			if (event.currentTarget.name == "cry_btn" || event.currentTarget.name == "try_btn" || event.currentTarget.name == "by_btn"
				|| event.currentTarget.name == "fry_btn" || event.currentTarget.name == "sky_btn") {
				if(event.currentTarget.hitTestObject(MovieClip(this.root).trig))
				{
					changePosition(btn_name);
					event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, startDragg);
					event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, stopDragg);
					cSound.play();
					wordCounter--;
				}
				else {
					wSound.play();
					event.currentTarget.x = getX;
					event.currentTarget.y = getY;
					getX = 0;
					getY = 0;
				}
			}
			else if (event.currentTarget.name == "tiny_btn" || event.currentTarget.name == "baby_btn" || event.currentTarget.name == "penny_btn"
				|| event.currentTarget.name == "very_btn" || event.currentTarget.name == "ruby_btn") {
				if(event.currentTarget.hitTestObject(MovieClip(this.root).trig1))
				{
					changePosition(btn_name);
					event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, startDragg);
					event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, stopDragg);
					cSound.play();
					wordCounter--;
				}
				else {
					wSound.play();
					event.currentTarget.x = getX;
					event.currentTarget.y = getY;
					getX = 0;
					getY = 0;
				}
			}
		}
		
		function changePosition(btn:String): void {
			switch(btn)
			{
				case "cry_btn":
					MovieClip(this.root).cry_btn.x = 216.95;
					MovieClip(this.root).cry_btn.y = 342;
					break;
				case "try_btn":
					MovieClip(this.root).try_btn.x = 216.95;
					MovieClip(this.root).try_btn.y = 414.1;
					break;
				case "by_btn":
					MovieClip(this.root).by_btn.x = 216.95;
					MovieClip(this.root).by_btn.y = 485.4;
					break;
				case "fry_btn":
					MovieClip(this.root).fry_btn.x = 216.95;
					MovieClip(this.root).fry_btn.y = 556.5;
					break;
				case "sky_btn":
					MovieClip(this.root).sky_btn.x = 216.95;
					MovieClip(this.root).sky_btn.y = 627.35;
					break;
				case "tiny_btn":
					MovieClip(this.root).tiny_btn.x = 1049.45;
					MovieClip(this.root).tiny_btn.y = 309.55;
					break;
				case "baby_btn":
					MovieClip(this.root).baby_btn.x = 1049.45;
					MovieClip(this.root).baby_btn.y = 379.3;
					break;
				case "penny_btn":
					MovieClip(this.root).penny_btn.x = 1049.45;
					MovieClip(this.root).penny_btn.y = 448.7;
					break;
				case "very_btn":
					MovieClip(this.root).very_btn.x = 1049.45;
					MovieClip(this.root).very_btn.y = 520.2;
					break;
				case "ruby_btn":
					MovieClip(this.root).ruby_btn.x = 1049.45;
					MovieClip(this.root).ruby_btn.y = 591.5;
					break;
				default:
					trace("no button was found");
			}
			
			complete();
		}

		function complete(): void {
			if(wordCounter == 0)
			{
				MovieClip(this.root).gotoAndStop(1, "lesson4");
			}
		}





	}



}