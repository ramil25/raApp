package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;

	public class Level3Day1 extends MovieClip {

		public function Level3Day1() {
			// constructor code
		}
		public function playGame(e: MouseEvent): void {
			switch (e.currentTarget.name) {
				case "btnPlay_l3_d1":
					MovieClip(root).gotoAndStop(4, "lesson3");
					break;
				case "l3_d1_playBtn":
					MovieClip(root).gotoAndStop(3, "lesson3");
					break;
			}

		}
		//drag and drop
		public var getX: int = 0;
		public var getY: int = 0;
		public var cSound: Sound = new CorrectSound();
		public var wSound: Sound = new WrongSound();
		public var btnName:String = "";
		public function startDragg(event: MouseEvent): void {
			getX = event.currentTarget.x;
			getY = event.currentTarget.y;
			btnName+event.currentTarget.name;
			event.currentTarget.startDrag();
		}
		
		public function stopDragg(event: MouseEvent): void {
			event.currentTarget.stopDrag();
				if(MovieClip(root).currentFrame == 4 && event.currentTarget.name == "a_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).trig)){
					MovieClip(this.root).a_btn.x = 391;
					MovieClip(this.root).a_btn.y = 636;
					cSound.play();
					MovieClip(this.root).nextBtn.visible = true;
				}
				else{
					wSound.play();
					event.currentTarget.x = getX;
					event.currentTarget.y = getY;
					getX = 0;
					getY = 0;
				}
			
		}
		
		public function nextRound(e:MouseEvent):void
		{
			MovieClip(this.root).nextFrame();
			MovieClip(this.root).a_btn.x = getX;
			MovieClip(this.root).a_btn.y = getY;
		}

	}



}